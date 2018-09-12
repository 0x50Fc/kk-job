package app

/*B(Import)*/
import (
	"bytes"
	"database/sql"
	"fmt"
	"strings"
	"time"

	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-micro/micro"
)

/*E(Import)*/

type /*B(Service)*/ JobItemService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *JobItemService) GetTitle() string {
	return "工作项服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.JobItemCreate)*/
/*创建*/
func (S *JobItemService) HandleJobItemCreateTask(a micro.IApp, task *JobItemCreateTask) error {
	/*E(Handle.JobItemCreate)*/
	//TODO

	if task.JobId == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到工作ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	tx, err := conn.Begin()

	v := JobItem{}
	job := Job{}

	err = func() error {

		rs, err := db.Query(tx, &job, prefix, " WHERE id=? FOR UPDATE", task.JobId)

		if err != nil {
			return err
		}

		if rs.Next() {

			scaner := db.NewScaner(&job)

			err := scaner.Scan(rs)

			rs.Close()

			if err != nil {
				return err
			}

			v.JobId = job.Id
			v.Version = job.Version + 1
			v.Title = fmt.Sprintf("#%d %s", v.Version, task.Title)
			v.Uid = task.Uid
			v.Options = task.Options
			v.Ctime = time.Now().Unix()
			v.Mtime = v.Ctime

			_, err = db.Insert(tx, &v, Prefix(a, prefix, job.Id))

			if err != nil {
				return err
			}

			job.Mtime = v.Mtime
			job.Version = v.Version

			_, err = db.UpdateWithKeys(tx, &job, prefix, map[string]bool{"mtime": true, "version": true})

			if err != nil {
				return err
			}

			item := JobQueue{}
			item.Iid = v.Id
			item.JobId = job.Id
			item.Uid = job.Uid
			item.Platform = job.Platform
			item.Ctime = v.Ctime

			_, err = db.Insert(tx, &item, prefix)

			if err != nil {
				return err
			}

		} else {
			rs.Close()
			return micro.NewError(ERROR_NOT_FOUND, "未找到工作")
		}

		return nil
	}()

	if err == nil {
		err = tx.Commit()
	}

	if err != nil {
		tx.Rollback()
		return err
	}

	task.Result.Item = &v

	return nil
}

/*B(Handle.JobItemQuery)*/
/*查询*/
func (S *JobItemService) HandleJobItemQueryTask(a micro.IApp, task *JobItemQueryTask) error {
	/*E(Handle.JobItemQuery)*/
	//TODO

	if task.JobId == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到工作ID")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.JobId)

	var v = JobItem{}

	sql := bytes.NewBuffer(nil)

	args := []interface{}{}

	sql.WriteString(" WHERE jobId=?")

	args = append(args, task.JobId)

	if task.Uid != nil {
		sql.WriteString(" AND uid=?")
		args = append(args, task.Uid)
	}

	if task.Status != "" {
		sql.WriteString(" AND status IN (")
		for i, v := range strings.Split(task.Status, ",") {
			if i != 0 {
				sql.WriteString(",")
			}
			sql.WriteString("?")
			args = append(args, v)
		}
		sql.WriteString(")")
	}

	if task.OrderBy == "asc" {
		sql.WriteString(" ORDER BY id ASC")
	} else {
		sql.WriteString(" ORDER BY id DESC")
	}

	var pageIndex = task.PageIndex
	var pageSize = task.PageSize

	if pageIndex < 1 {
		pageIndex = 1
	}

	if pageSize < 1 {
		pageSize = 10
	}

	if task.Counter {
		var counter = micro.Counter{}
		counter.PageIndex = pageIndex
		counter.PageSize = pageSize
		counter.RowCount, err = db.Count(conn, &v, prefix, sql.String(), args...)
		if err != nil {
			return err
		}
		if counter.RowCount%pageSize == 0 {
			counter.PageCount = counter.RowCount / pageSize
		} else {
			counter.PageCount = counter.RowCount/pageSize + 1
		}
		task.Result.Counter = &counter
	}

	sql.WriteString(fmt.Sprintf(" LIMIT %d,%d", (pageIndex-1)*pageSize, pageSize))

	var scanner = db.NewScaner(&v)
	var vs = []JobItem{}

	rows, err := db.Query(conn, &v, prefix,
		sql.String(), args...)

	if err != nil {
		return err
	}

	defer rows.Close()

	for rows.Next() {

		err = scanner.Scan(rows)

		if err != nil {
			return err
		}

		vs = append(vs, v)
	}

	task.Result.Items = vs

	return nil
}

/*B(Handle.JobItemGet)*/
/*获取*/
func (S *JobItemService) HandleJobItemGetTask(a micro.IApp, task *JobItemGetTask) error {
	/*E(Handle.JobItemGet)*/
	//TODO

	if task.JobId == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到工作ID")
	}

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到工作项ID")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.JobId)

	var v = JobItem{}
	var scanner = db.NewScaner(&v)
	var rs *sql.Rows = nil

	rs, err = db.Query(conn, &v, prefix, " WHERE id=?", task.Id)

	if err != nil {
		return err
	}

	defer rs.Close()

	if rs.Next() {

		err = scanner.Scan(rs)

		if err != nil {
			return err
		}

	} else {

		return micro.NewError(ERROR_NOT_FOUND, "未找到工作项")
	}

	task.Result.Item = &v

	return nil
}

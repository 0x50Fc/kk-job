package app

/*B(Import)*/
import (
	"bytes"
	"fmt"
	"time"

	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-micro/micro"
)

/*E(Import)*/

type /*B(Service)*/ JobLogService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *JobLogService) GetTitle() string {
	return "工作日志服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.JobLogQuery)*/
/*查询*/
func (S *JobLogService) HandleJobLogQueryTask(a micro.IApp, task *JobLogQueryTask) error {
	/*E(Handle.JobLogQuery)*/
	//TODO

	if task.JobId == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到工作ID")
	}

	if task.Iid == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到工作项ID")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.JobId)

	var v = JobLog{}

	sql := bytes.NewBuffer(nil)

	args := []interface{}{}

	sql.WriteString(" WHERE jobId=? AND iid=?")

	args = append(args, task.JobId, task.Iid)

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
	var vs = []JobLog{}

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

/*B(Handle.JobLogCreate)*/
/*创建*/
func (S *JobLogService) HandleJobLogCreateTask(a micro.IApp, task *JobLogCreateTask) error {
	/*E(Handle.JobLogCreate)*/
	//TODO

	if task.JobId == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到工作ID")
	}

	if task.Iid == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到工作项ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	prefix = Prefix(a, prefix, task.JobId)

	v := JobLog{}

	v.JobId = task.JobId
	v.Iid = task.Iid
	v.Message = task.Message
	v.Ctime = time.Now().Unix()

	_, err = db.Insert(conn, &v, prefix)

	if err != nil {

		return err
	}

	task.Result.Log = &v

	return nil
}

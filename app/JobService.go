package app

import (
	"bytes"
	"database/sql"
	"fmt"
	"time"

	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-micro/micro"
)

/*B(Import)*/

/*E(Import)*/

type /*B(Service)*/ JobService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *JobService) GetTitle() string {
	return "工作服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.JobCreate)*/
/*创建*/
func (S *JobService) HandleJobCreateTask(a micro.IApp, task *JobCreateTask) error {
	/*E(Handle.JobCreate)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	v := Job{}

	v.Title = task.Title
	v.Platform = task.Platform
	v.Script = task.Script
	v.Options = task.Options
	v.Env = task.Env
	v.Uid = task.Uid
	v.Ctime = time.Now().Unix()
	v.Mtime = v.Ctime

	_, err = db.Insert(conn, &v, prefix)

	if err != nil {

		return err
	}

	task.Result.Job = &v

	return nil
}

/*B(Handle.JobQuery)*/
/*查询*/
func (S *JobService) HandleJobQueryTask(a micro.IApp, task *JobQueryTask) error {
	/*E(Handle.JobQuery)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	var v = Job{}

	sql := bytes.NewBuffer(nil)

	args := []interface{}{}

	sql.WriteString(" WHERE 1")

	if task.Id != 0 {
		sql.WriteString(" AND id=?")
		args = append(args, task.Id)
	}

	if task.Uid != nil {
		sql.WriteString(" AND uid=?")
		args = append(args, task.Uid)
	}

	if task.Platform != "" {
		sql.WriteString(" AND platform=?")
		args = append(args, task.Platform)
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
	var vs = []Job{}

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

	task.Result.Jobs = vs

	return nil
}

/*B(Handle.JobRemove)*/
/*删除*/
func (S *JobService) HandleJobRemoveTask(a micro.IApp, task *JobRemoveTask) error {
	/*E(Handle.JobRemove)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到工作ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	var v = Job{}
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

		_, err = db.Delete(conn, &v, prefix)

		if err != nil {
			return err
		}

		{
			i := JobItem{}
			_, _ = db.DeleteWithSQL(conn, &i, Prefix(a, prefix, v.Id), " WHERE jobId=?", v.Id)
		}

		{
			i := JobLog{}
			_, _ = db.DeleteWithSQL(conn, &i, Prefix(a, prefix, v.Id), " WHERE jobId=?", v.Id)
		}

	} else {

		return micro.NewError(ERROR_NOT_FOUND, "未找到工作")
	}

	task.Result.Job = &v

	return nil
}

/*B(Handle.JobGet)*/
/*获取*/
func (S *JobService) HandleJobGetTask(a micro.IApp, task *JobGetTask) error {
	/*E(Handle.JobGet)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到工作ID")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	var v = Job{}
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

		return micro.NewError(ERROR_NOT_FOUND, "未找到工作")
	}

	task.Result.Job = &v

	return nil
}

/*B(Handle.JobSet)*/
/*修改*/
func (S *JobService) HandleJobSetTask(a micro.IApp, task *JobSetTask) error {
	/*E(Handle.JobSet)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到工作ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	var v = Job{}
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

		keys := map[string]bool{}

		keys["mtime"] = true

		v.Mtime = time.Now().Unix()

		if task.Title != "" {
			keys["title"] = true
			v.Title = task.Title
		}

		if task.Platform != nil {
			keys["platform"] = true
			v.Platform = dynamic.StringValue(task.Platform, "")
		}

		if task.Script != nil {
			keys["script"] = true
			v.Script = dynamic.StringValue(task.Script, "")
		}

		if task.Uid != nil {
			keys["uid"] = true
			v.Uid = dynamic.IntValue(task.Uid, 0)
		}

		if task.Options != nil {

			options := map[string]interface{}{}

			dynamic.Each(v.Options, func(key interface{}, value interface{}) bool {
				options[dynamic.StringValue(key, "")] = value
				return true
			})

			dynamic.Each(task.Options, func(key interface{}, value interface{}) bool {
				options[dynamic.StringValue(key, "")] = value
				return true
			})

			v.Options = options
			keys["options"] = true

		}

		if task.Env != nil {

			options := map[string]interface{}{}

			dynamic.Each(v.Env, func(key interface{}, value interface{}) bool {
				options[dynamic.StringValue(key, "")] = value
				return true
			})

			dynamic.Each(task.Env, func(key interface{}, value interface{}) bool {
				options[dynamic.StringValue(key, "")] = value
				return true
			})

			v.Env = options
			keys["env"] = true

		}

		_, err = db.UpdateWithKeys(conn, &v, prefix, keys)

		if err != nil {
			return err
		}

	} else {

		return micro.NewError(ERROR_NOT_FOUND, "未找到工作")
	}

	task.Result.Job = &v

	return nil
}

package app

import (
	"bytes"
	"database/sql"
	"fmt"
	"strings"
	"time"

	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-lib/dynamic"
)

/*B(Import)*/
import "github.com/hailongz/kk-micro/micro"

/*E(Import)*/

type /*B(Service)*/ SlaveService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *SlaveService) GetTitle() string {
	return "工作机服务"
}

/*E(Title)*/

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.SlaveLogin)*/
/*登录*/
func (S *SlaveService) HandleSlaveLoginTask(a micro.IApp, task *SlaveLoginTask) error {
	/*E(Handle.SlaveLogin)*/
	//TODO

	if task.Token == "" {
		return micro.NewError(ERROR_NOT_FOUND_TOKEN, "未找到工作机TOKEN")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	v := Slave{}

	rs, err := db.Query(conn, &v, prefix, " WHERE token=?", task.Token)

	if err != nil {
		return err
	}

	if rs.Next() {

		scaner := db.NewScaner(&v)

		err := scaner.Scan(rs)

		rs.Close()

		if err != nil {
			return err
		}

		item := JobItem{}

		_, err = conn.Exec(fmt.Sprintf("UPDATE `%s` SET status=? WHERE slaveId=? AND status=?", db.TableName(prefix, &item)), JOB_ITEM_STATUS_ERROR, v.Id, JOB_ITEM_STATUS_RUNNING)

	} else {
		rs.Close()
		return micro.NewError(ERROR_NOT_FOUND, "未找到工作机")
	}

	task.Result.Slave = &v

	return nil
}

/*B(Handle.SlaveRemove)*/
/*删除*/
func (S *SlaveService) HandleSlaveRemoveTask(a micro.IApp, task *SlaveRemoveTask) error {
	/*E(Handle.SlaveRemove)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到工作机ID")
	}

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	var v = Slave{}
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

	} else {

		return micro.NewError(ERROR_NOT_FOUND, "未找到工作机")
	}

	task.Result.Slave = &v

	return nil
}

/*B(Handle.SlaveGet)*/
/*获取*/
func (S *SlaveService) HandleSlaveGetTask(a micro.IApp, task *SlaveGetTask) error {
	/*E(Handle.SlaveGet)*/
	//TODO
	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到工作机ID")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	var v = Slave{}
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

		return micro.NewError(ERROR_NOT_FOUND, "未找到工作机")
	}

	task.Result.Slave = &v

	return nil
}

/*B(Handle.SlaveSet)*/
/*修改*/
func (S *SlaveService) HandleSlaveSetTask(a micro.IApp, task *SlaveSetTask) error {
	/*E(Handle.SlaveSet)*/
	//TODO

	if task.Id == 0 {
		return micro.NewError(ERROR_NOT_FOUND_ID, "未找到工作机ID")
	}

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	var v = Slave{}
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

		if task.Title != "" {
			keys["title"] = true
			v.Title = task.Title
		}

		if task.Platform != "" {
			keys["platform"] = true
			v.Platform = task.Platform
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

			keys["options"] = true
			v.Options = options
		}

		if task.Status != nil {
			keys["status"] = true
			v.Status = int(dynamic.IntValue(task.Status, 0))
		}

		if task.Token {
			keys["token"] = true
			v.Token = NewToken(a)
		}

		if len(keys) > 0 {

			_, err = db.UpdateWithKeys(conn, &v, prefix, keys)

			if err != nil {
				return err
			}
		}

	} else {

		return micro.NewError(ERROR_NOT_FOUND, "未找到工作机")
	}

	task.Result.Slave = &v

	return nil
}

/*B(Handle.SlaveCreate)*/
/*创建*/
func (S *SlaveService) HandleSlaveCreateTask(a micro.IApp, task *SlaveCreateTask) error {
	/*E(Handle.SlaveCreate)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "db")

	if err != nil {
		return err
	}

	v := Slave{}

	v.Title = task.Title
	v.Platform = task.Platform
	v.Options = task.Options
	v.Uid = task.Uid
	v.Ctime = time.Now().Unix()
	v.Token = NewToken(a)

	_, err = db.Insert(conn, &v, prefix)

	if err != nil {

		return err
	}

	task.Result.Slave = &v

	return nil
}

/*B(Handle.SlaveQuery)*/
/*查询*/
func (S *SlaveService) HandleSlaveQueryTask(a micro.IApp, task *SlaveQueryTask) error {
	/*E(Handle.SlaveQuery)*/
	//TODO

	conn, prefix, err := micro.DBOpen(a, "dbr")

	if err != nil {
		return err
	}

	var v = Slave{}

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
	var vs = []Slave{}

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

	task.Result.Slaves = vs

	return nil
}

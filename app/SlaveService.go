package app

import (
	"bytes"
	"database/sql"
	"fmt"
	"log"
	"strings"
	"time"

	"github.com/hailongz/kk-lib/db"
	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-micro/micro"
)

/*B(Import)*/

/*E(Import)*/

type /*B(Service)*/ SlaveService /*E(Service)*/ struct {

	/*B(Task)*/ /*E(Task)*/

}

/*B(Title)*/
func (S *SlaveService) GetTitle() string {
	return "工作机服务"
}

/*E(Title)*/

func getJob(conn db.Database, prefix string, id int64) (*Job, error) {

	job := Job{}

	rs, err := db.Query(conn, &job, prefix, " WHERE id=?", id)

	if err != nil {
		return nil, err
	}

	defer rs.Close()

	if rs.Next() {

		scaner := db.NewScaner(&job)

		err = scaner.Scan(rs)

		if err != nil {
			return nil, err
		}

		return &job, nil

	} else {
		return nil, micro.NewError(ERROR_NOT_FOUND, "未找到工作")
	}
}

func getJobItem(a micro.IApp, conn db.Database, prefix string, item *JobQueue) (*Job, *JobItem, error) {

	jobItem := JobItem{}

	rs, err := db.Query(conn, &jobItem, Prefix(a, prefix, item.JobId), " WHERE id=? AND status=?", item.Iid, JOB_ITEM_STATUS_NONE)

	if err != nil {
		return nil, nil, err
	}

	if rs.Next() {

		scaner := db.NewScaner(&jobItem)

		err = scaner.Scan(rs)

		rs.Close()

		if err != nil {
			return nil, nil, err
		}

		jobItem.Status = JOB_ITEM_STATUS_RUNNING
		jobItem.Mtime = time.Now().Unix()

		_, err = db.UpdateWithKeys(conn, &jobItem, Prefix(a, prefix, item.JobId), map[string]bool{"status": true, "mtime": true})

		if err != nil {
			return nil, nil, err
		}

		job, err := getJob(conn, prefix, item.JobId)

		if err != nil {
			return nil, nil, err
		}

		return job, &jobItem, nil

	} else {
		rs.Close()
		return nil, nil, micro.NewError(ERROR_NOT_FOUND, "未找到工作项")
	}
}

/*B(Handle)*/ /*E(Handle)*/
/*B(Handle.SlaveJobSet)*/
/*修改工作状态*/
func (S *SlaveService) HandleSlaveJobSetTask(a micro.IApp, task *SlaveJobSetTask) error {
	/*E(Handle.SlaveJobSet)*/
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

		err = db.Transaction(conn, func(conn db.Database) error {

			item := JobQueue{}

			rs, err := db.Query(conn, &item, prefix, " WHERE uid=? AND slaveId=? AND iid=? AND jobId=? ORDER BY id ASC LIMIT 1", v.Uid, v.Id, task.Iid, task.JobId)

			if err != nil {
				return err
			}

			if rs.Next() {

				scaner := db.NewScaner(&item)

				err = scaner.Scan(rs)

				rs.Close()

				if err != nil {
					return err
				}

				jobItem := JobItem{}

				_, err = conn.Exec(fmt.Sprintf("UPDATE `%s` SET status=? WHERE id=? AND jobId=?", db.TableName(Prefix(a, prefix, item.JobId), &jobItem)), task.Status, task.Iid, task.JobId)

				if err != nil {
					return err
				}

				_, err = db.Delete(conn, &item, prefix)

				if err != nil {
					return err
				}

			} else {
				rs.Close()
				return micro.NewError(ERROR_NOT_FOUND, "无可用工作")
			}

			return nil
		})

		if err != nil {
			return err
		}

	} else {
		rs.Close()
		return micro.NewError(ERROR_NOT_FOUND, "未找到工作机")
	}

	return nil
}

/*B(Handle.SlaveJobLog)*/
/*日志*/
func (S *SlaveService) HandleSlaveJobLogTask(a micro.IApp, task *SlaveJobLogTask) error {
	/*E(Handle.SlaveJobLog)*/
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

		item := JobQueue{}

		count, err := db.Count(conn, &item, prefix, " WHERE uid=? AND slaveId=? AND iid=? AND jobId=? ORDER BY id ASC LIMIT 1", v.Uid, v.Id, task.Iid, task.JobId)

		if err != nil {
			return err
		}

		if count > 0 {

			i := JobLogCreateTask{}
			i.Iid = task.Iid
			i.JobId = task.JobId
			i.Message = task.Message

			err = a.Handle(&i)

			if err != nil {
				return err
			}

		} else {

			return micro.NewError(ERROR_NOT_FOUND, "无可用工作")
		}

	} else {
		rs.Close()
		return micro.NewError(ERROR_NOT_FOUND, "未找到工作机")
	}

	return nil
}

/*B(Handle.SlaveJobGet)*/
/*获取工作*/
func (S *SlaveService) HandleSlaveJobGetTask(a micro.IApp, task *SlaveJobGetTask) error {
	/*E(Handle.SlaveJobGet)*/
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

		err = db.Transaction(conn, func(conn db.Database) error {

			item := JobQueue{}

			sql := bytes.NewBuffer(nil)

			args := []interface{}{}

			sql.WriteString(" WHERE uid=?")

			args = append(args, v.Uid)

			sql.WriteString(" AND platform LIKE ?")

			args = append(args, "%"+v.Platform+"%")

			sql.WriteString(" AND slaveId=0 ORDER BY id ASC LIMIT 1")

			log.Println("[SQL]", sql.String())

			rs, err = db.Query(conn, &item, prefix, sql.String(), args...)

			if err != nil {
				return err
			}

			if rs.Next() {

				scaner := db.NewScaner(&item)

				err := scaner.Scan(rs)

				rs.Close()

				if err != nil {
					return err
				}

				item.SlaveId = v.Id

				_, err = db.UpdateWithKeys(conn, &item, prefix, map[string]bool{"slaveId": true})

				if err != nil {
					return err
				}

				job, jobItem, err := getJobItem(a, conn, prefix, &item)

				if err != nil {
					return err
				}

				task.Result.Item = jobItem
				task.Result.Job = job

			} else {
				rs.Close()
				return micro.NewError(ERROR_NOT_FOUND, "无可用工作")
			}

			return nil
		})

		if err != nil {
			return err
		}

	} else {
		rs.Close()
		return micro.NewError(ERROR_NOT_FOUND, "未找到工作机")
	}

	task.Result.Slave = &v

	return nil
}

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

		err = cancelJobQueue(a, conn, prefix, v.Id)

		if err != nil {
			return err
		}

		keys := map[string]bool{}

		keys["status"] = true

		v.Status = SLAVE_STATUS_ONLINE

		if task.Title != "" {
			keys["title"] = true
			v.Title = task.Title
		}

		if task.Platform != "" {
			keys["platform"] = true
			v.Platform = task.Platform
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

		_, err = db.UpdateWithKeys(conn, &v, prefix, keys)

		if err != nil {
			return err
		}

	} else {
		rs.Close()
		return micro.NewError(ERROR_NOT_FOUND, "未找到工作机")
	}

	task.Result.Slave = &v

	return nil
}

func cancelJobQueue(a micro.IApp, conn *sql.DB, prefix string, slaveId int64) error {

	return db.Transaction(conn, func(conn db.Database) error {

		item := JobQueue{}

		rs, err := db.Query(conn, &item, prefix, " WHERE slaveId=?", slaveId)

		if err != nil {
			return err
		}

		items := []JobQueue{}

		scaner := db.NewScaner(&item)

		for rs.Next() {

			err = scaner.Scan(rs)

			if err != nil {
				rs.Close()
				return err
			}

			items = append(items, item)
		}

		rs.Close()

		i := JobItem{}

		for _, item = range items {
			_, err = conn.Exec(fmt.Sprintf("UPDATE `%s` SET status=? WHERE id=? AND status=?", db.TableName(Prefix(a, prefix, item.JobId), &i)), JOB_ITEM_STATUS_ERROR, item.Iid, JOB_ITEM_STATUS_RUNNING)
			if err != nil {
				return err
			}
			_, err = db.Delete(conn, &item, prefix)
			if err != nil {
				return err
			}
		}

		return nil
	})
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

		err = cancelJobQueue(a, conn, prefix, v.Id)

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

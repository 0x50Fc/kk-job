package app

import (
	"crypto/md5"
	"encoding/hex"
	"fmt"
	"math/rand"
	"time"

	"github.com/hailongz/kk-lib/dynamic"
	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	/*B(App.Service)*/ /*E(App.Service)*/
	/*B(App.Service.JobLog)*/
	{
		s := JobLogService{}
		app.Use(&JobLogCreateTask{},&s)
		app.Use(&JobLogQueryTask{},&s)
	}
	/*E(App.Service.JobLog)*/
	/*B(App.Service.JobItem)*/
	{
		s := JobItemService{}
		app.Use(&JobItemQueryTask{},&s)
		app.Use(&JobItemCreateTask{},&s)
		app.Use(&JobItemGetTask{},&s)
	}
	/*E(App.Service.JobItem)*/
	/*B(App.Service.Job)*/
	{
		s := JobService{}
		app.Use(&JobCreateTask{},&s)
		app.Use(&JobSetTask{},&s)
		app.Use(&JobGetTask{},&s)
		app.Use(&JobRemoveTask{},&s)
		app.Use(&JobQueryTask{},&s)
	}
	/*E(App.Service.Job)*/
	/*B(App.Service.Slave)*/
	{
		s := SlaveService{}
		app.Use(&SlaveRemoveTask{},&s)
		app.Use(&SlaveLoginTask{},&s)
		app.Use(&SlaveJobSetTask{},&s)
		app.Use(&SlaveQueryTask{},&s)
		app.Use(&SlaveCreateTask{},&s)
		app.Use(&SlaveSetTask{},&s)
		app.Use(&SlaveGetTask{},&s)
		app.Use(&SlaveJobGetTask{},&s)
		app.Use(&SlaveJobLogTask{},&s)
	}
	/*E(App.Service.Slave)*/

	//默认数据服务
	app.AddDefaultService(&micro.DBService{})

	//默认远程服务
	app.AddDefaultService(&micro.RemoteService{})

	//服务启动
	app.Handle(&micro.StartupTask{})

	return app
}

func Prefix(app micro.IApp, prefix string, jobId int64) string {
	count := uint(dynamic.IntValue(dynamic.Get(app.Config(), "tableCount"), 1))
	iid := uint(jobId & 0x0ffffffff)
	return fmt.Sprintf("%s%d_", prefix, (iid%count)+1)
}

func NewToken(app micro.IApp) string {
	token := dynamic.StringValue(dynamic.Get(app.Config(), "token"), "")
	m := md5.New()
	m.Write([]byte(fmt.Sprintf("%d_%d_%s", time.Now().Nanosecond(), rand.Int(), token)))
	return hex.EncodeToString(m.Sum(nil))
}

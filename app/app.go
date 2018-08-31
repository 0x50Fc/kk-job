package app

import (
	"github.com/hailongz/kk-micro/micro"
)

func Open(app micro.IApp) micro.IApp {

	/*B(App.Service)*/ /*E(App.Service)*/
	/*B(App.Service.JobLog)*/
	{
		s := JobLogService{}
		app.Use(&JobLogCreateTask{}, &s)
		app.Use(&JobLogQueryTask{}, &s)
	}
	/*E(App.Service.JobLog)*/
	/*B(App.Service.JobItem)*/
	{
		s := JobItemService{}
		app.Use(&JobItemCreateTask{}, &s)
		app.Use(&JobItemGetTask{}, &s)
		app.Use(&JobItemQueryTask{}, &s)
	}
	/*E(App.Service.JobItem)*/
	/*B(App.Service.Job)*/
	{
		s := JobService{}
		app.Use(&JobCreateTask{}, &s)
		app.Use(&JobSetTask{}, &s)
		app.Use(&JobGetTask{}, &s)
		app.Use(&JobRemoveTask{}, &s)
		app.Use(&JobQueryTask{}, &s)
	}
	/*E(App.Service.Job)*/
	/*B(App.Service.Slave)*/
	{
		s := SlaveService{}
		app.Use(&SlaveCreateTask{}, &s)
		app.Use(&SlaveSetTask{}, &s)
		app.Use(&SlaveGetTask{}, &s)
		app.Use(&SlaveRemoveTask{}, &s)
		app.Use(&SlaveQueryTask{}, &s)
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

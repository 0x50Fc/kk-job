package app

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
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

	return nil
}


/*B(Handle.JobLogCreate)*/
/*创建*/
func (S *JobLogService) HandleJobLogCreateTask(a micro.IApp, task *JobLogCreateTask) error {
/*E(Handle.JobLogCreate)*/
	//TODO

	return nil
}



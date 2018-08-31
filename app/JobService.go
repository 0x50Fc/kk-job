package app

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
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

	return nil
}


/*B(Handle.JobQuery)*/
/*查询*/
func (S *JobService) HandleJobQueryTask(a micro.IApp, task *JobQueryTask) error {
/*E(Handle.JobQuery)*/
	//TODO

	return nil
}


/*B(Handle.JobRemove)*/
/*删除*/
func (S *JobService) HandleJobRemoveTask(a micro.IApp, task *JobRemoveTask) error {
/*E(Handle.JobRemove)*/
	//TODO

	return nil
}


/*B(Handle.JobGet)*/
/*获取*/
func (S *JobService) HandleJobGetTask(a micro.IApp, task *JobGetTask) error {
/*E(Handle.JobGet)*/
	//TODO

	return nil
}


/*B(Handle.JobSet)*/
/*修改*/
func (S *JobService) HandleJobSetTask(a micro.IApp, task *JobSetTask) error {
/*E(Handle.JobSet)*/
	//TODO

	return nil
}



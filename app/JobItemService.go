package app

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
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

	return nil
}


/*B(Handle.JobItemQuery)*/
/*查询*/
func (S *JobItemService) HandleJobItemQueryTask(a micro.IApp, task *JobItemQueryTask) error {
/*E(Handle.JobItemQuery)*/
	//TODO

	return nil
}


/*B(Handle.JobItemGet)*/
/*获取*/
func (S *JobItemService) HandleJobItemGetTask(a micro.IApp, task *JobItemGetTask) error {
/*E(Handle.JobItemGet)*/
	//TODO

	return nil
}



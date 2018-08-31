package app

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
/*B(Handle.SlaveRemove)*/
/*删除*/
func (S *SlaveService) HandleSlaveRemoveTask(a micro.IApp, task *SlaveRemoveTask) error {
/*E(Handle.SlaveRemove)*/
	//TODO

	return nil
}


/*B(Handle.SlaveGet)*/
/*获取*/
func (S *SlaveService) HandleSlaveGetTask(a micro.IApp, task *SlaveGetTask) error {
/*E(Handle.SlaveGet)*/
	//TODO

	return nil
}


/*B(Handle.SlaveSet)*/
/*修改*/
func (S *SlaveService) HandleSlaveSetTask(a micro.IApp, task *SlaveSetTask) error {
/*E(Handle.SlaveSet)*/
	//TODO

	return nil
}


/*B(Handle.SlaveCreate)*/
/*创建*/
func (S *SlaveService) HandleSlaveCreateTask(a micro.IApp, task *SlaveCreateTask) error {
/*E(Handle.SlaveCreate)*/
	//TODO

	return nil
}


/*B(Handle.SlaveQuery)*/
/*查询*/
func (S *SlaveService) HandleSlaveQueryTask(a micro.IApp, task *SlaveQueryTask) error {
/*E(Handle.SlaveQuery)*/
	//TODO

	return nil
}



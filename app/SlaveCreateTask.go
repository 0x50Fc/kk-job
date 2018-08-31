package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ SlaveCreateTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.slave)*/
	Slave *Slave `json:"slave,omitempty" title:"工作机"`
	/*E(Output.slave)*/
}

type /*B(Task)*/ SlaveCreateTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Input.options)*/
	/*B(Input.platform)*/
	Platform string `json:"platform" title:"平台"`
	/*E(Input.platform)*/
	/*B(Input.uid)*/
	Uid int64 `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.title)*/
	Title string `json:"title" title:"说明"`
	/*E(Input.title)*/

	/*B(Task.Result)*/
	Result SlaveCreateTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *SlaveCreateTask) GetName() string {
	return "slave/create"
}

/*E(name)*/

/*B(title)*/
func (T *SlaveCreateTask) GetTitle() string {
	return "创建"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *SlaveCreateTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

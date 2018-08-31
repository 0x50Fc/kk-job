package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ SlaveSetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.slave)*/
	Slave *Slave `json:"slave,omitempty" title:"工作机"`
	/*E(Output.slave)*/
}

type /*B(Task)*/ SlaveSetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Input.options)*/
	/*B(Input.status)*/
	Status interface{} `json:"status" title:"状态"`
	/*E(Input.status)*/
	/*B(Input.platform)*/
	Platform string `json:"platform" title:"平台"`
	/*E(Input.platform)*/
	/*B(Input.uid)*/
	Uid interface{} `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.title)*/
	Title string `json:"title" title:"说明"`
	/*E(Input.title)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result SlaveSetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *SlaveSetTask) GetName() string {
	return "slave/set"
}

/*E(name)*/

/*B(title)*/
func (T *SlaveSetTask) GetTitle() string {
	return "修改"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *SlaveSetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

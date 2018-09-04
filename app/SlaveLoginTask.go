package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ SlaveLoginTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.slave)*/
	Slave *Slave `json:"slave,omitempty" title:"工作机"`
	/*E(Output.slave)*/
}

type /*B(Task)*/ SlaveLoginTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Input.options)*/
	/*B(Input.platform)*/
	Platform string `json:"platform" title:"平台"`
	/*E(Input.platform)*/
	/*B(Input.title)*/
	Title string `json:"title" title:"说明"`
	/*E(Input.title)*/
	/*B(Input.token)*/
	Token string `json:"token" title:"TOKEN"`
	/*E(Input.token)*/

	/*B(Task.Result)*/
	Result SlaveLoginTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *SlaveLoginTask) GetName() string {
	return "slave/login"
}

/*E(name)*/

/*B(title)*/
func (T *SlaveLoginTask) GetTitle() string {
	return "登录"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *SlaveLoginTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ JobSetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.job)*/
	Job *Job `json:"job,omitempty" title:"工作"`
	/*E(Output.job)*/
}

type /*B(Task)*/ JobSetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.script)*/
	Script interface{} `json:"script" title:"脚本"`
	/*E(Input.script)*/
	/*B(Input.env)*/
	Env interface{} `json:"env" title:"环境数据"`
	/*E(Input.env)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Input.options)*/
	/*B(Input.platform)*/
	Platform interface{} `json:"platform" title:"平台"`
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
	Result JobSetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *JobSetTask) GetName() string {
	return "job/set"
}

/*E(name)*/

/*B(title)*/
func (T *JobSetTask) GetTitle() string {
	return "修改"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *JobSetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

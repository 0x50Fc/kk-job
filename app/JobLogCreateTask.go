package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ JobLogCreateTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.log)*/
	Log *JobLog `json:"log,omitempty" title:"工作日志"`
	/*E(Output.log)*/
}

type /*B(Task)*/ JobLogCreateTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.message)*/
	Message string `json:"message" title:"日志"`
	/*E(Input.message)*/
	/*B(Input.iid)*/
	Iid int64 `json:"iid" title:"工作项ID"`
	/*E(Input.iid)*/

	/*B(Task.Result)*/
	Result JobLogCreateTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *JobLogCreateTask) GetName() string {
	return "job/log/create"
}

/*E(name)*/

/*B(title)*/
func (T *JobLogCreateTask) GetTitle() string {
	return "创建"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *JobLogCreateTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

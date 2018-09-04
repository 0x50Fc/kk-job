package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ SlaveJobLogTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
}

type /*B(Task)*/ SlaveJobLogTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.message)*/
	Message string `json:"message" title:"日志"`
	/*E(Input.message)*/
	/*B(Input.iid)*/
	Iid int64 `json:"iid" title:"工作项ID"`
	/*E(Input.iid)*/
	/*B(Input.jobId)*/
	JobId int64 `json:"jobId" title:"工作ID"`
	/*E(Input.jobId)*/
	/*B(Input.token)*/
	Token string `json:"token" title:"TOKEN"`
	/*E(Input.token)*/

	/*B(Task.Result)*/
	Result SlaveJobLogTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *SlaveJobLogTask) GetName() string {
	return "slave/job/log"
}

/*E(name)*/

/*B(title)*/
func (T *SlaveJobLogTask) GetTitle() string {
	return "日志"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *SlaveJobLogTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

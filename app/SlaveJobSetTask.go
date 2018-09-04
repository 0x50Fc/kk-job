package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ SlaveJobSetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
}

type /*B(Task)*/ SlaveJobSetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.status)*/
	Status int `json:"status" title:"状态"`
	/*E(Input.status)*/
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
	Result SlaveJobSetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *SlaveJobSetTask) GetName() string {
	return "slave/job/set"
}

/*E(name)*/

/*B(title)*/
func (T *SlaveJobSetTask) GetTitle() string {
	return "修改工作状态"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *SlaveJobSetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

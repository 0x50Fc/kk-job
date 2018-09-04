package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ SlaveJobGetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.item)*/
	Item *JobItem `json:"item,omitempty" title:"工作项"`
	/*E(Output.item)*/
	/*B(Output.job)*/
	Job *Job `json:"job,omitempty" title:"工作"`
	/*E(Output.job)*/
	/*B(Output.slave)*/
	Slave *Slave `json:"slave,omitempty" title:"工作机"`
	/*E(Output.slave)*/
}

type /*B(Task)*/ SlaveJobGetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.token)*/
	Token string `json:"token" title:"TOKEN"`
	/*E(Input.token)*/

	/*B(Task.Result)*/
	Result SlaveJobGetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *SlaveJobGetTask) GetName() string {
	return "slave/job/get"
}

/*E(name)*/

/*B(title)*/
func (T *SlaveJobGetTask) GetTitle() string {
	return "获取工作"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *SlaveJobGetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

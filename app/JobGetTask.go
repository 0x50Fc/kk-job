package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ JobGetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.job)*/
	Job *Job `json:"job,omitempty" title:"工作"`
	/*E(Output.job)*/
}

type /*B(Task)*/ JobGetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result JobGetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *JobGetTask) GetName() string {
	return "job/get"
}

/*E(name)*/

/*B(title)*/
func (T *JobGetTask) GetTitle() string {
	return "获取"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *JobGetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

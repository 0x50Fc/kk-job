package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ JobRemoveTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.job)*/
	Job *Job `json:"job,omitempty" title:"工作"`
	/*E(Output.job)*/
}

type /*B(Task)*/ JobRemoveTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result JobRemoveTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *JobRemoveTask) GetName() string {
	return "job/remove"
}

/*E(name)*/

/*B(title)*/
func (T *JobRemoveTask) GetTitle() string {
	return "删除"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *JobRemoveTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ JobItemGetTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.item)*/
	Item *JobItem `json:"item,omitempty" title:"工作项"`
	/*E(Output.item)*/
}

type /*B(Task)*/ JobItemGetTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.jobId)*/
	JobId int64 `json:"jobId" title:"工作ID"`
	/*E(Input.jobId)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result JobItemGetTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *JobItemGetTask) GetName() string {
	return "job/item/get"
}

/*E(name)*/

/*B(title)*/
func (T *JobItemGetTask) GetTitle() string {
	return "获取"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *JobItemGetTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

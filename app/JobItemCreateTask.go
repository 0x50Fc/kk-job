package app

/*B(Import)*/
	/*E(Import)*/

type /*B(Result)*/ JobItemCreateTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.item)*/
	Item *JobItem `json:"item,omitempty" title:"工作项"`
	/*E(Output.item)*/
}

type /*B(Task)*/ JobItemCreateTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Input.options)*/
	/*B(Input.jobId)*/
	JobId int64 `json:"jobId" title:"工作ID"`
	/*E(Input.jobId)*/
	/*B(Input.uid)*/
	Uid int64 `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.title)*/
	Title string `json:"title" title:"说明"`
	/*E(Input.title)*/

	/*B(Task.Result)*/
	Result JobItemCreateTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *JobItemCreateTask) GetName() string {
	return "job/item/create"
}

/*E(name)*/

/*B(title)*/
func (T *JobItemCreateTask) GetTitle() string {
	return "创建"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *JobItemCreateTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

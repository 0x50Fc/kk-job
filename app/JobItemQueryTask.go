package app

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
	/*E(Import)*/

type /*B(Result)*/ JobItemQueryTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	micro.QueryTaskResult
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.items)*/
	Items []JobItem `json:"items,omitempty" title:"工作"`
	/*E(Output.items)*/
}

type /*B(Task)*/ JobItemQueryTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	micro.QueryTask
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.orderBy)*/
	OrderBy string `json:"orderBy" title:"desc 降序默认 asc 升序"`
	/*E(Input.orderBy)*/
	/*B(Input.status)*/
	Status string `json:"status" title:"状态 多个逗号分割"`
	/*E(Input.status)*/
	/*B(Input.uid)*/
	Uid interface{} `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.jobId)*/
	JobId int64 `json:"jobId" title:"工作ID"`
	/*E(Input.jobId)*/

	/*B(Task.Result)*/
	Result JobItemQueryTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *JobItemQueryTask) GetName() string {
	return "job/item/query"
}

/*E(name)*/

/*B(title)*/
func (T *JobItemQueryTask) GetTitle() string {
	return "查询"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *JobItemQueryTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

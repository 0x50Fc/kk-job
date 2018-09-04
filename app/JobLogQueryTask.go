package app

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
	/*E(Import)*/

type /*B(Result)*/ JobLogQueryTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	micro.QueryTaskResult
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.items)*/
	Items []JobLog `json:"items,omitempty" title:"工作日志"`
	/*E(Output.items)*/
}

type /*B(Task)*/ JobLogQueryTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	micro.QueryTask
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.jobId)*/
	JobId int64 `json:"jobId" title:"工作ID"`
	/*E(Input.jobId)*/
	/*B(Input.orderBy)*/
	OrderBy string `json:"orderBy" title:"desc 降序默认 asc 升序"`
	/*E(Input.orderBy)*/
	/*B(Input.iid)*/
	Iid int64 `json:"iid" title:"工作项ID"`
	/*E(Input.iid)*/

	/*B(Task.Result)*/
	Result JobLogQueryTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *JobLogQueryTask) GetName() string {
	return "job/log/query"
}

/*E(name)*/

/*B(title)*/
func (T *JobLogQueryTask) GetTitle() string {
	return "查询"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *JobLogQueryTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

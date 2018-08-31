package app

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
	/*E(Import)*/

type /*B(Result)*/ JobQueryTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	micro.QueryTaskResult
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.jobs)*/
	Jobs []Job `json:"jobs,omitempty" title:"工作"`
	/*E(Output.jobs)*/
}

type /*B(Task)*/ JobQueryTask /*E(Task)*/ struct {
	/*B(Task.Base)*/
	micro.QueryTask
	/*E(Task.Base)*/

	/*B(Input)*/ /*E(Input)*/
	/*B(Input.orderBy)*/
	OrderBy string `json:"orderBy" title:"desc 降序默认 asc 升序"`
	/*E(Input.orderBy)*/
	/*B(Input.platform)*/
	Platform string `json:"platform" title:"平台"`
	/*E(Input.platform)*/
	/*B(Input.uid)*/
	Uid interface{} `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"工作ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result JobQueryTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *JobQueryTask) GetName() string {
	return "job/query"
}

/*E(name)*/

/*B(title)*/
func (T *JobQueryTask) GetTitle() string {
	return "查询"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *JobQueryTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

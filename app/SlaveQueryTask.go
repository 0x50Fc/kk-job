package app

/*B(Import)*/
	import "github.com/hailongz/kk-micro/micro"
	/*E(Import)*/

type /*B(Result)*/ SlaveQueryTaskResult /*E(Result)*/ struct {
	/*B(Result.Base)*/
	micro.QueryTaskResult
	/*E(Result.Base)*/

	/*B(Output)*/ /*E(Output)*/
	/*B(Output.slaves)*/
	Slaves []Slave `json:"slaves,omitempty" title:"工作机"`
	/*E(Output.slaves)*/
}

type /*B(Task)*/ SlaveQueryTask /*E(Task)*/ struct {
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
	/*B(Input.platform)*/
	Platform string `json:"platform" title:"平台"`
	/*E(Input.platform)*/
	/*B(Input.uid)*/
	Uid interface{} `json:"uid" title:"用户ID"`
	/*E(Input.uid)*/
	/*B(Input.id)*/
	Id int64 `json:"id" title:"TODO ID"`
	/*E(Input.id)*/

	/*B(Task.Result)*/
	Result SlaveQueryTaskResult `json:"-"`
	/*E(Task.Result)*/
}

/*B(name)*/
func (T *SlaveQueryTask) GetName() string {
	return "slave/query"
}

/*E(name)*/

/*B(title)*/
func (T *SlaveQueryTask) GetTitle() string {
	return "查询"
}

/*E(title)*/

/*B(Task.GetResult)*/
func (T *SlaveQueryTask) GetResult() interface{} {
	return &T.Result
}

/*E(Task.GetResult)*/

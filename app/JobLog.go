package app

/*B(Import)*/
	import "github.com/hailongz/kk-lib/db"
	/*E(Import)*/

type /*B(Object)*/ JobLog /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间"`
	/*E(Property.ctime)*/
	/*B(Property.message)*/
	Message string `json:"message" title:"日志" length:"-1"`
	/*E(Property.message)*/
	/*B(Property.iid)*/
	Iid int64 `json:"iid" title:"工作项ID" index:"asc"`
	/*E(Property.iid)*/

}

/*B(Name)*/
func (O *JobLog) GetName() string {
	return "job_log"
}

/*E(Name)*/

/*B(Title)*/
func (O *JobLog) GetTitle() string {
	return "工作日志"
}

/*E(Title)*/

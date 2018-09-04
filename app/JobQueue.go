package app

/*B(Import)*/
	import "github.com/hailongz/kk-lib/db"
	/*E(Import)*/

type /*B(Object)*/ JobQueue /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.platform)*/
	Platform string `json:"platform" title:"平台" length:"64" index:"asc"`
	/*E(Property.platform)*/
	/*B(Property.slaveId)*/
	SlaveId int64 `json:"slaveId" title:"工作机ID" index:"asc"`
	/*E(Property.slaveId)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间"`
	/*E(Property.ctime)*/
	/*B(Property.iid)*/
	Iid int64 `json:"iid" title:"工作项ID" index:"asc"`
	/*E(Property.iid)*/
	/*B(Property.jobId)*/
	JobId int64 `json:"jobId" title:"工作ID" index:"asc"`
	/*E(Property.jobId)*/
	/*B(Property.uid)*/
	Uid int64 `json:"uid" title:"用户ID" index:"asc"`
	/*E(Property.uid)*/

}

/*B(Name)*/
func (O *JobQueue) GetName() string {
	return "job_queue"
}

/*E(Name)*/

/*B(Title)*/
func (O *JobQueue) GetTitle() string {
	return "工作队列"
}

/*E(Title)*/

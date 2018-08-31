package app

/*B(Import)*/
import "github.com/hailongz/kk-lib/db"

/*E(Import)*/

const (
	JOB_ITEM_STATUS_NONE  = 0
	JOB_ITEM_STATUS_OK    = 200
	JOB_ITEM_STATUS_ERROR = 400
)

type /*B(Object)*/ JobItem /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.mtime)*/
	Mtime int64 `json:"mtime" title:"修改时间"`
	/*E(Property.mtime)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间"`
	/*E(Property.ctime)*/
	/*B(Property.status)*/
	Status int `json:"status" title:"状态" index:"asc"`
	/*E(Property.status)*/
	/*B(Property.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Property.options)*/
	/*B(Property.version)*/
	Version int `json:"version" title:"版本号"`
	/*E(Property.version)*/
	/*B(Property.slaveId)*/
	SlaveId int64 `json:"slaveId" title:"工作机ID" index:"asc"`
	/*E(Property.slaveId)*/
	/*B(Property.jobId)*/
	JobId int64 `json:"jobId" title:"工作ID" index:"asc"`
	/*E(Property.jobId)*/
	/*B(Property.uid)*/
	Uid int64 `json:"uid" title:"用户ID" index:"asc"`
	/*E(Property.uid)*/
	/*B(Property.title)*/
	Title string `json:"title" title:"说明" length:"255"`
	/*E(Property.title)*/

}

/*B(Name)*/
func (O *JobItem) GetName() string {
	return "job_item"
}

/*E(Name)*/

/*B(Title)*/
func (O *JobItem) GetTitle() string {
	return "工作项"
}

/*E(Title)*/

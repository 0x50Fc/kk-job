package app

/*B(Import)*/
	import "github.com/hailongz/kk-lib/db"
	/*E(Import)*/

const (
	SLAVE_STATUS_NONE   = 0 //离线
	SLAVE_STATUS_ONLINE = 1 //在线
)

type /*B(Object)*/ Slave /*E(Object)*/ struct {
	/*B(Object.Base)*/
	db.Object
	/*E(Object.Base)*/

	/*B(Property)*/ /*E(Property)*/
	/*B(Property.ctime)*/
	Ctime int64 `json:"ctime" title:"创建时间"`
	/*E(Property.ctime)*/
	/*B(Property.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Property.options)*/
	/*B(Property.status)*/
	Status int `json:"status" title:"状态" index:"asc"`
	/*E(Property.status)*/
	/*B(Property.platform)*/
	Platform string `json:"platform" title:"平台" length:"64" index:"asc"`
	/*E(Property.platform)*/
	/*B(Property.uid)*/
	Uid int64 `json:"uid" title:"用户ID" index:"asc"`
	/*E(Property.uid)*/
	/*B(Property.token)*/
	Token string `json:"token" title:"TOKEN" length:"64" index:"asc"`
	/*E(Property.token)*/
	/*B(Property.title)*/
	Title string `json:"title" title:"说明" length:"255"`
	/*E(Property.title)*/

}

/*B(Name)*/
func (O *Slave) GetName() string {
	return "slave"
}

/*E(Name)*/

/*B(Title)*/
func (O *Slave) GetTitle() string {
	return "工作机"
}

/*E(Title)*/

package app

/*B(Import)*/
	import "github.com/hailongz/kk-lib/db"
	/*E(Import)*/

type /*B(Object)*/ Job /*E(Object)*/ struct {
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
	/*B(Property.script)*/
	Script string `json:"script" title:"脚本" length:"-2"`
	/*E(Property.script)*/
	/*B(Property.env)*/
	Env interface{} `json:"env" title:"环境数据"`
	/*E(Property.env)*/
	/*B(Property.options)*/
	Options interface{} `json:"options" title:"其他数据"`
	/*E(Property.options)*/
	/*B(Property.version)*/
	Version int `json:"version" title:"最新版本号"`
	/*E(Property.version)*/
	/*B(Property.platform)*/
	Platform string `json:"platform" title:"平台" length:"64"`
	/*E(Property.platform)*/
	/*B(Property.uid)*/
	Uid int64 `json:"uid" title:"用户ID" index:"asc"`
	/*E(Property.uid)*/
	/*B(Property.title)*/
	Title string `json:"title" title:"说明" length:"255"`
	/*E(Property.title)*/

}

/*B(Name)*/
func (O *Job) GetName() string {
	return "job"
}

/*E(Name)*/

/*B(Title)*/
func (O *Job) GetTitle() string {
	return "工作"
}

/*E(Title)*/

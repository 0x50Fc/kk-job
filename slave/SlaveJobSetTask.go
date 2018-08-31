package slave

type SlaveJobSetTaskResult struct {
}

type SlaveJobSetTask struct {
	Token  string `json:"token" title:"token"`
	Iid    int64  `json:"iid" title:"工作项ID"`
	Status int    `json:"status" title:"状态"`

	Result SlaveJobSetTaskResult `json:"-"`
}

func (T *SlaveJobSetTask) GetName() string {
	return "slave/job/set"
}

func (T *SlaveJobSetTask) GetTitle() string {
	return "设置工作状态"
}

func (T *SlaveJobSetTask) GetResult() interface{} {
	return &T.Result
}

package slave

type SlaveJobLogTaskResult struct {
}

type SlaveJobLogTask struct {
	Token   string `json:"token" title:"token"`
	Iid     int64  `json:"iid" title:"工作项ID"`
	Message string `json:"message" title:"日志"`

	Result SlaveJobLogTaskResult `json:"-"`
}

func (T *SlaveJobLogTask) GetName() string {
	return "slave/job/log"
}

func (T *SlaveJobLogTask) GetTitle() string {
	return "日志"
}

func (T *SlaveJobLogTask) GetResult() interface{} {
	return &T.Result
}

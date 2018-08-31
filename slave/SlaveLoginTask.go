package slave

type SlaveLoginTaskResult struct {
}

type SlaveLoginTask struct {
	Token    string      `json:"token" title:"token"`
	Options  interface{} `json:"options" title:"其他数据"`
	Platform string      `json:"platform" title:"平台"`

	Result SlaveLoginTaskResult `json:"-"`
}

func (T *SlaveLoginTask) GetName() string {
	return "slave/login"
}

func (T *SlaveLoginTask) GetTitle() string {
	return "登录"
}

func (T *SlaveLoginTask) GetResult() interface{} {
	return &T.Result
}

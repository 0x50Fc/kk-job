package slave

import "github.com/hailongz/kk-job/app"

type SlaveJobGetTaskResult struct {
	Job     *app.Job     `json:"job" title:"工作"`
	JobItem *app.JobItem `json:"item" title:"工作项"`
}

type SlaveJobGetTask struct {
	Token string `json:"token" title:"token"`

	Result SlaveJobGetTaskResult `json:"-"`
}

func (T *SlaveJobGetTask) GetName() string {
	return "slave/job/get"
}

func (T *SlaveJobGetTask) GetTitle() string {
	return "获取工作"
}

func (T *SlaveJobGetTask) GetResult() interface{} {
	return &T.Result
}

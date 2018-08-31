package slave

import "github.com/hailongz/kk-job/app"

type SlaveJobItemTaskResult struct {
	Job     *app.Job     `json:"job" title:"工作"`
	JobItem *app.JobItem `json:"item" title:"工作项"`
}

type SlaveJobItemTask struct {
	Token string `json:"token" title:"token"`

	Result SlaveJobItemTaskResult `json:"-"`
}

func (T *SlaveJobItemTask) GetName() string {
	return "slave/job/item"
}

func (T *SlaveJobItemTask) GetTitle() string {
	return "获取工作"
}

func (T *SlaveJobItemTask) GetResult() interface{} {
	return &T.Result
}

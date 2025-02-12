package json

import "go/types"

type ApiResponseSaveData struct {
	UserId uint   `json:"user_id"`
	Data   string `json:"data"`
}
type ApiResponsePredict struct {
	UserId uint `json:"user_id"`
}
type ApiRespondPredict struct {
	ForeCase types.Slice `json:"forecase"`
}

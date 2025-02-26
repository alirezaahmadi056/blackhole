package main

import (
	"blackhole/AI"
	"blackhole/model/database"
	"blackhole/model/json"
	"blackhole/utils"
	"github.com/gin-gonic/gin"
	"net/http"
	"strings"
)

func main() {
	var server = gin.Default()
	server.GET("/", func(context *gin.Context) {
		context.JSON(200, "hello from black hole project")
	})
	server.POST("/api/add", func(context *gin.Context) {
		apiKey := context.GetHeader("x-api-key")
		if apiKey == "" {
			context.JSON(http.StatusBadRequest, "Invalid Api Key")
			return
		}
		if utils.CalculateMd5(apiKey) != "a0c41faa37f61436fe438d82ad6758e0" {
			context.JSON(http.StatusBadRequest, "Invalid Api Key")
			return
		}
		var response json.ApiResponseSaveData
		err := context.ShouldBindJSON(&response)
		if err != nil {
			context.JSON(http.StatusBadGateway, "bad request")
			return
		}
		result := database.SaveDataToDataBase(response.UserId, response.Data)
		if result {
			context.JSON(http.StatusOK, "ok")
		} else {
			context.JSON(http.StatusBadRequest, "err")
		}
	})
	server.POST("/api/predict", func(context *gin.Context) {
		apiKey := context.GetHeader("x-api-key")
		if apiKey == "" {
			context.JSON(http.StatusBadRequest, "Invalid Api Key")
			return
		}
		if utils.CalculateMd5(apiKey) != "a0c41faa37f61436fe438d82ad6758e0" {
			context.JSON(http.StatusBadRequest, "Invalid Api Key")
			return
		}
		var response json.ApiResponsePredict
		err := context.ShouldBindJSON(&response)
		if err != nil {
			context.JSON(http.StatusBadGateway, "bad request")
			return
		}
		result := database.GetAllUserData(response.UserId)
		clearedResult := strings.Join(result, ",")
		aiResult := AI.Predict(clearedResult)
		context.JSON(http.StatusOK, aiResult)
	})

	err := server.Run("0.0.0.0:3131")
	if err != nil {
		return
	}
}

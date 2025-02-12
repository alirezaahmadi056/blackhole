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
		}
		if utils.CalculateMd5(apiKey) != "" {
			context.JSON(http.StatusBadRequest, "Invalid Api Key")
		}
		var response json.ApiResponseSaveData
		err := context.ShouldBindJSON(&response)
		if err != nil {
			context.JSON(http.StatusBadGateway, "bad request")
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
		}
		if utils.CalculateMd5(apiKey) != "" {
			context.JSON(http.StatusBadRequest, "Invalid Api Key")
		}
		var response json.ApiResponsePredict
		err := context.ShouldBindJSON(&response)
		if err != nil {
			context.JSON(http.StatusBadGateway, "bad request")
		}
		result := database.GetAllUserData(response.UserId)
		clearedResult := strings.Join(result, ",")
		aiResult := AI.Predict(clearedResult)
		context.JSON(http.StatusOK, aiResult)
	})

	err := server.Run(":8000")
	if err != nil {
		return
	}
}

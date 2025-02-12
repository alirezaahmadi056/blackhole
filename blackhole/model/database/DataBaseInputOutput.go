package database

import (
	"database/sql"
	_ "github.com/go-sql-driver/mysql"
	"log"
)

func SaveDataToDataBase(userId uint, data string) bool {
	database, err := sql.Open("mysql", "root@tcp(127.0.0.1:3306)/blackhole")
	if err != nil {
		panic(err)
	}
	defer database.Close()
	_, errInsert := database.Exec("INSERT INTO user_data (id, data) VALUES (?, ?)", userId, data)
	if errInsert != nil {
		panic(errInsert)
		return false
	}
	return true
}

func GetAllUserData(userId uint) []string {
	database, err := sql.Open("mysql", "root@tcp(127.0.0.1:3306)/blackhole")
	if err != nil {
		log.Fatal(err)
	}
	defer database.Close()

	rows, err := database.Query("SELECT data FROM user_data WHERE id = ?", userId)
	if err != nil {
		log.Fatal(err)
	}
	defer rows.Close()

	var dataList []string
	for rows.Next() {
		var data string
		if err := rows.Scan(&data); err != nil {
			log.Fatal(err)
		}
		dataList = append(dataList, data)
	}

	if err := rows.Err(); err != nil {
		log.Fatal(err)
	}

	return dataList
}

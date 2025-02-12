package utils

import (
	"crypto/md5"
	"encoding/hex"
)

func CalculateMd5(value string) string {
	mdf := md5.New()
	mdf.Write([]byte(value))
	return hex.EncodeToString(mdf.Sum(nil))
}

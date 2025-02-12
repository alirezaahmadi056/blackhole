package AI

import (
	"context"
	"fmt"
	"github.com/google/generative-ai-go/genai"
	"google.golang.org/api/option"
	"log"
	"strings"
)

func Predict(data string) string {
	var result strings.Builder
	client, err := genai.NewClient(context.Background(), option.WithAPIKey("AIzaSyDQG1vc51uH73GQ6_VPaNh1ShN93c81woI"))
	if err != nil {
		panic(err)
	}
	model := client.GenerativeModel("gemini-1.5-flash")
	resp, err := model.GenerateContent(context.Background(), genai.Text(fmt.Sprintf("According to the texts I give you, the character of the person for whom these texts are intended, just remove the predicted characters, separate them and give your answer only in Persian. Words:%s", data)))
	if err != nil {
		log.Fatal(err)
	}
	for _, cand := range resp.Candidates {
		if cand.Content != nil {
			for _, part := range cand.Content.Parts {
				partStr := fmt.Sprintf("%v", part)
				result.WriteString(partStr)
			}
		}
	}
	return result.String()
}

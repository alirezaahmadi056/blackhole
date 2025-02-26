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
	resp, err := model.GenerateContent(context.Background(), genai.Text(fmt.Sprintf("Based on the texts that I provide to you, which are separated by commas, you should identify the personality of the individual these texts belong to. For example, you should state if this person is wealthy, loves knowledge, is in a relationship, etc., and overall, analyze them. These texts can come from any source, such as their messages, their own writings, or messages from others.Your answer must be in Persian only.words:%s", data)))
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

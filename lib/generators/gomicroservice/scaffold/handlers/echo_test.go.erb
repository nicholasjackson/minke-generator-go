package handlers

import (
	"context"
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"testing"

	log "github.com/Sirupsen/logrus"
	"github.com/stretchr/testify/assert"
)

func echoTestSetup(t *testing.T) http.Handler {
	deps := echoHandlerDependencies{
		logger: &log.Logger{},
	}

	return newEchoHandler(deps)
}

func TestEchoHandlerCorrectlyEchosResponse(t *testing.T) {
	h := echoTestSetup(t)

	var responseRecorder *httptest.ResponseRecorder
	r := httptest.NewRequest("POST", "/echo", nil)

	responseRecorder = httptest.NewRecorder()

	echo := Echo{Echo: "Hello World"}
	c := context.WithValue(context.Background(), validationRequestKey{}, echo)
	r = r.WithContext(c)

	h.ServeHTTP(responseRecorder, r)

	body := responseRecorder.Body.Bytes()
	response := Echo{}
	json.Unmarshal(body, &response)

	assert.Equal(t, 200, responseRecorder.Code)
	assert.Equal(t, response.Echo, "Hello World")
}

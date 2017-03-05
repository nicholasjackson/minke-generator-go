package handlers

import (
	"net/http"
	"net/http/httptest"
	"testing"

	log "github.com/Sirupsen/logrus"

	"github.com/stretchr/testify/assert"
)

func healthTestSetup(t *testing.T) http.Handler {
	return newHealthHandler(healthHandlerDependencies{
		logger: &log.Logger{},
	})
}

// Simple test to show how we can use the ResponseRecorder to test our HTTP handlers
func TestHealthHandler(t *testing.T) {
	handler := healthTestSetup(t)

	var responseRecorder httptest.ResponseRecorder
	var request http.Request

	handler.ServeHTTP(&responseRecorder, &request)

	assert.Equal(t, 200, responseRecorder.Code)
}

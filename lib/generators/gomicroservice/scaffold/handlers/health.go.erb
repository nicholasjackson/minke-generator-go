package handlers

import (
	"encoding/json"
	"net/http"

	log "github.com/Sirupsen/logrus"
)

const kTagHealth = "HealthHandler"

type HealthResponse struct {
	StatusMessage string `json:"status_message"`
}

type healthHandlerDependencies struct {
	logger *log.Logger
}

type healthHandler struct {
	deps healthHandlerDependencies
}

func (h *healthHandler) ServeHTTP(rw http.ResponseWriter, r *http.Request) {
	// all HealthHandlerDependencies are automatically created by injection process
	h.deps.logger.WithField(kTagHealth, "Called GET")

	response := HealthResponse{StatusMessage: "OK"}

	encoder := json.NewEncoder(rw)
	encoder.Encode(&response)
}

func newHealthHandler(deps healthHandlerDependencies) http.Handler {
	return &healthHandler{deps}
}

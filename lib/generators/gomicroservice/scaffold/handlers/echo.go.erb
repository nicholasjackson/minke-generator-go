package handlers

import (
	"encoding/json"
	"net/http"

	log "github.com/Sirupsen/logrus"
)

const kTagEcho = "EchoHandler"

type echoHandlerDependencies struct {
	logger *log.Logger
}

// Echo uses the validation middleware to automatically validate input
// github.com/asaskevich/govalidator
type Echo struct {
	Echo string `json:"echo" valid:"stringlength(1|255),required"`
}

type echoHandler struct {
	deps echoHandlerDependencies
}

func (e *echoHandler) ServeHTTP(rw http.ResponseWriter, r *http.Request) {
	e.deps.logger.WithField(kTagEcho, "Called GET")

	// request is set into the context from the middleware
	request := r.Context().Value(validationRequestKey{}).(Echo)

	encoder := json.NewEncoder(rw)
	encoder.Encode(request)
}

func newEchoHandler(deps echoHandlerDependencies) http.Handler {
	return &echoHandler{deps}
}

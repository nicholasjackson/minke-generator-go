package handlers

import (
	"reflect"

	log "github.com/Sirupsen/logrus"
	"github.com/gorilla/pat"
)

func GetRouter(logger *log.Logger) *pat.Router {
	r := pat.New()

	echoHandler := newEchoHandler(echoHandlerDependencies{logger})
	healthHandler := newHealthHandler(healthHandlerDependencies{logger})
	validationHandler := newRequestValidationHandler(
		requestValidationDependencies{logger},
		reflect.TypeOf(Echo{}),
		echoHandler)

	r.Add("GET", "/v1/health", healthHandler)
	r.Add("POST", "/v1/echo", validationHandler)

	return r
}

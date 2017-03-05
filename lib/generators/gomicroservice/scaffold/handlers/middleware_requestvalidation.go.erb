package handlers

import (
	"encoding/json"
	"io/ioutil"
	"net/http"
	"reflect"

	log "github.com/Sirupsen/logrus"
	"github.com/asaskevich/govalidator"
	"github.com/gorilla/context"
)

const kRequestValidationTag = "RequestValidation"

type validationRequestKey struct{}

type requestValidationDependencies struct {
	logger *log.Logger
}

type requestValidationHandler struct {
	deps requestValidationDependencies
	t    reflect.Type
	next http.Handler
}

func (rv *requestValidationHandler) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	rv.deps.logger.WithField(kRequestValidationTag, r.Method+" Called")

	request := reflect.New(rv.t).Interface()

	defer r.Body.Close()
	data, _ := ioutil.ReadAll(r.Body)

	err := json.Unmarshal(data, &request)
	if err != nil {
		rv.deps.logger.WithField(kRequestValidationTag, "Bad request")
		http.Error(w, "Invalid Request", http.StatusBadRequest)
		return
	}

	_, err = govalidator.ValidateStruct(request)
	if err != nil {
		rv.deps.logger.WithField(kRequestValidationTag, "Validation error")
		http.Error(w, "Invalid Request", http.StatusBadRequest)
		return
	}

	context.Set(r, "request", request)

	rv.next.ServeHTTP(w, r)
}

func newRequestValidationHandler(deps requestValidationDependencies, t reflect.Type, next http.Handler) http.Handler {
	return &requestValidationHandler{
		deps: deps,
		t:    t,
		next: next,
	}
}

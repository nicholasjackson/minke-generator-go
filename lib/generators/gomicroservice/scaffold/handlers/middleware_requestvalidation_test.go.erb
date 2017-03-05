package handlers

import (
	"bytes"
	"io/ioutil"
	"net/http"
	"net/http/httptest"
	"reflect"
	"testing"

	log "github.com/Sirupsen/logrus"
	"github.com/gorilla/context"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/mock"
)

type mockType struct {
	FirstName string `json:"first_name" valid:"alphanum,stringlength(1|255),required"`
}

var mh *mockHandler

func setupRequestValidationTests(t *testing.T) http.Handler {
	mh = &mockHandler{}
	mh.Mock.On("ServeHTTP", mock.Anything, mock.Anything)

	validationHandler := newRequestValidationHandler(requestValidationDependencies{
		logger: &log.Logger{},
	},
		reflect.TypeOf(mockType{}),
		mh)

	return validationHandler
}

func TestCallsNextOnSuccessfulValidation(t *testing.T) {
	handler := setupRequestValidationTests(t)
	var responseRecorder httptest.ResponseRecorder
	var request http.Request
	request.Body = ioutil.NopCloser(bytes.NewBufferString(`{"first_name": "Nic"}`))

	handler.ServeHTTP(&responseRecorder, &request)

	mh.Mock.AssertCalled(t, "ServeHTTP", mock.Anything, mock.Anything)
}

func TestSetsContextSuccessfully(t *testing.T) {
	handler := setupRequestValidationTests(t)
	var responseRecorder httptest.ResponseRecorder
	var request http.Request
	request.Body = ioutil.NopCloser(bytes.NewBufferString(`{"first_name": "Nic"}`))

	handler.ServeHTTP(&responseRecorder, &request)
	requestObj := context.Get(&request, "request").(*mockType)
	assert.Equal(t, "Nic", requestObj.FirstName)
}

func TestReturnsBadRequestWhenNoObject(t *testing.T) {
	handler := setupRequestValidationTests(t)
	var responseRecorder httptest.ResponseRecorder
	var request http.Request
	request.Body = ioutil.NopCloser(bytes.NewBufferString(``))

	handler.ServeHTTP(&responseRecorder, &request)

	assert.Equal(t, http.StatusBadRequest, responseRecorder.Code)
}

func TestReturnsBadRequestWhenRequestInvalid(t *testing.T) {
	handler := setupRequestValidationTests(t)
	var responseRecorder httptest.ResponseRecorder
	var request http.Request
	request.Body = ioutil.NopCloser(bytes.NewBufferString(`{"first_name": ""}`))

	handler.ServeHTTP(&responseRecorder, &request)

	assert.Equal(t, http.StatusBadRequest, responseRecorder.Code)
}

@healthcheck
Feature: Health check
	In order to ensure quality
	As a user
	I want to be able to test functionality of my API

Background:


Scenario: Health check returns ok
	Given I send and accept JSON
	When I send a GET request to the api endpoint "/v1/health"
	Then the response status should be "200"
	And the JSON response should have key "status_message"

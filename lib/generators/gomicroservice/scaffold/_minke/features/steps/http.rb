When(/^I send a GET request to the api endpoint "([^"]*)"$/) do |endpoint|
  steps %Q{
    When I send a GET request to "#{$SERVER_PATH}#{endpoint}"
  }
end

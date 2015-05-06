require 'rubygems'
require 'watir-webdriver'
require_relative("../support/lib/shared_objs")




Given(/^I am on the child keeper site$/) do
  goto_child_keeper
  validate_page_by_title "Home"
end

When(/^I click the (.+) Link/) do |registration_link|
  goto_link registration_link
end

Then(/^I should see registration form$/) do
  validate_page_by_title "home"
end


And(/^I register a new account as a "([^"]*)" owner between the ages of "([^"]*)"$/) do |gender, range|
  set_text_field_by_id("username", "jooxwoman")
  set_text_field_by_id("nameold", "Henrietta")
  set_text_field_by_id("email", "henry.mbadiwe@gmail.com")
  set_text_field_by_id("zipcode", "30311")
  set_text_field_by_id("password", "password")
  set_text_field_by_id("cpassword", "password")

  set_select_value_by_id("gender", gender)
  set_select_value_by_id("age", range)
end
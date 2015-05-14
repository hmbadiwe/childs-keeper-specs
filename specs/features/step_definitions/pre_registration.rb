require 'rubygems'
require 'watir-webdriver'
require_relative("../support/lib/shared_objs")
require_relative("../support/lib/TestData")


include TestData

Given(/^I am on the child keeper site$/) do
  goto_child_keeper
  validate_page_by_title "Home"
end

When(/^I click the (.+) Link/) do |registration_link|
  goto_link registration_link
end

Then(/^I should see the registration form$/) do
  validate_page_by_title "Home"
end




When(/^I click the (.+) Button$/) do |link_name|
  goto_link(link_name)
  validate_page_by_title "Home"
end

And(/^I should be on the valid registration site$/) do
  validate_page_by_url REGISTRATION_URL
end


Given(/^That I am on the child keeper login page$/) do
  goto_login
end

When(/^I click the (.*) link$/) do |link_name|
  goto_link link_name
end
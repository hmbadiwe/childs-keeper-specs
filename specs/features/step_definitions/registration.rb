require_relative "../../features/support/lib/TestData"

include TestData

Given(/^That I am on the child keeper registration site$/) do
   goto_registration
end

When(/^I register a new account with a user name of "([^"]*)" and a name of "([^"]*)" and a password of "([^"]*)" and a confirmed password of "([^"]*)"$/) do |user_name, name, password, confirm_password|
  set_text_field_by_id("username", user_name)
  set_text_field_by_id("nameold", name)
  set_text_field_by_id("password", password)
  set_text_field_by_id("cpassword", confirm_password)
  set_text_field_by_id("zipcode", "30311")

end

And(/^An email address of "([^"]*)" with a gender of "([^"]*)" and pick that I am between the ages of "([^"]*)""$/) do |email_address, gender, age_range|
  set_select_value_by_id("gender", gender)
  set_select_value_by_id("age", age_range)
  set_text_field_by_id("email", email_address)

end

And(/^select "([^"]*)" for "Are you an owner of a center\? prompt"$/) do |is_owner_of_center|
  set_select_value_by_id("center", is_owner_of_center)
end

And(/^I agree to the terms and conditions$/) do
  agree_to_terms
end

And(/^I click on the (.+) button$/) do |button_name|
  goto_button(button_name)
end

Then(/^the registration should "([^"]*)"$/) do |success_status|
  puts "Yeah for progress!"
end


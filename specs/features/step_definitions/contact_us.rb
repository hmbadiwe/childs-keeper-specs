require_relative "../support/lib/shared_objs"

Given(/^That I am on the child keeper page$/) do
  goto_child_keeper
end

When(/^I click on the (.+) link$/) do |link_name|
  puts "Clicking on link: #{link_name}"
  goto_link link_name
end


And(/^I enter a "([^"]*)", "([^"]*)","([^"]*)" and an optional "([^"]*)"$/) do |name, email_address, how_i_heard, question|
  set_text_field_by_id("name", name)
  set_text_field_by_id("email", email_address)
  set_select_value_by_id("aboutus", how_i_heard )
  set_text_area_by_id("question", question)
  puts "Name is #{name}, email_address is #{email_address}"

end

Then(/^I should get a successful "([^"]*)"$/) do |arg|
  puts "The status is #{arg}"
end


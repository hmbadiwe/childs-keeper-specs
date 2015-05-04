require 'rubygems'
require 'watir-webdriver'

@browser = Watir::Browser.new :chrome

@browser.goto('http://www.childskeeper.com')
@browser.link(:value => 'Join Today')
@browser.button(:value => 'View Details', :index => 3).click
@browser.button(:value => 'Adopt Me!').click


fail("Wrong text content") unless @browser.text.include? "Something in my heart"





# describe 'My behaviour' do
#
#   it 'should do something' do
#
#     true.should == false
#   end
# end
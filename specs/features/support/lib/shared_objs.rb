require 'rubygems'
require 'watir-webdriver'

def goto_link(link)
  $browser.link(:text => link).click
end

def goto_child_keeper
  $browser.goto 'http://www.childskeeper.com'
end

def validate_page_by_title(title)
  $browser.title.should include title
end

def set_text_field_by_id(id, value)
  $browser.text_field(:id => id).set(value)
end

def set_select_value_by_id(id, value)
  $browser.select(:id => id).select_value(value)
end

def set_text_area_by_id(id,value)
  $browser.textarea(:id => id).set(value)
end
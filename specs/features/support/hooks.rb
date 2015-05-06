require 'watir-webdriver'



Before do
  $browser = Watir::Browser.new :chrome
  $browser.driver.manage.window.resize_to(1400, 800)


end


After do
  #@browser.close
end
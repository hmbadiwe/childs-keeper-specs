module TestData
  REGISTRATION_URL ||= 'http://www.childskeeper.com/signup.php'
  LOGIN_URL ||= 'http://www.childskeeper.com/login.php'

  def goto_link(link)
    $browser.link(:text => link).click
  end
  def goto_button(button_name)
    $browser.button(:value => button_name ).click
  end

  def goto_child_keeper
    $browser.goto 'http://www.childskeeper.com'
  end

  def goto_registration
    $browser.goto REGISTRATION_URL
  end

  def goto_login
    $browser.goto LOGIN_URL
  end

  def validate_page_by_title(title)
    $browser.title.should include title
  end

  def validate_page_by_url(url)
    puts "Browser url = #{$browser.url}, url = #{url}"
    $browser.url.should include url
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

  def agree_to_terms
    $browser.checkbox(:id => "checkbox").click
  end

end
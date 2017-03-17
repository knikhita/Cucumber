#Scenario : 1st

Given(/^I am on housing home page$/) do
  @b = Selenium::WebDriver.for :firefox
  @b.navigate.to "https://housing.com"
  wait = Selenium::WebDriver::Wait.new(:timeout => 2)
end

When(/^I click on Pune City$/) do
  city_select = @b.find_element(:xpath,'//*[@id="header"]/header/div[1]/div[2]/div[4]/div/span/a[6]')
  city_select.click()
  sleep 10
end

Then(/^Pune city gets selected$/) do
  puts @b.current_url.blue
end

#Scenario : 2nd
Given(/^I am on Home page$/) do
  print "I am on PUNE CITY HOME PAGE"
end


When(/^I click on Login option$/) do
  login_option = @b.find_element(:id => 'loginModalBtn').click
  sleep 5
end

When(/^I checked if modal gets opened$/) do
  #login_modal = @b.find_element(:class => '.lg-cont').displayed?
  #puts "Login modal gets opened"
  #if (@b.find_elements(:class =>'.lg-cont').size >0)
  if (@b.find_elements(:class =>'.lg-cont'))
    puts 'Login modal gets opened'.blue
  else
    puts 'Login modal NOT FOUND'.red
  end
  #login_modal = wait.until {
  #  element = @b.find_element(:class =>'.lg-cont')
  #  element if element.displayed? }
end

When(/^I select Sign In option$/) do
  sign_in = @b.find_element(:xpath => '//*[@id="react-modal"]/div/div/div/div[2]/div/div/div/div[2]/div[4]/div[1]')
  sign_in.click()
  sleep 20

end

Then(/^Email & Password fields are shown$/) do
  #mail_text_field = @b.find_elements(:class => '.input.text')
  #mail_text_field.displayed?
  if (@b.find_elements(:class => '.input.text'))
    puts 'Mail text field is present'.blue
  else
    puts 'Mail text field is NOT FOUND'.red
  end

  if (@b.find_elements(:class => '.input.password'))
    puts 'Password field is present'.blue
  else
    puts 'Password field is NOT FOUND'.red
  end
  sleep 20

end


#Scenario : 3rd
#Given(/^I am on Login modal$/) do
#  puts "Login modal is available"
#end

When(/^I Entered Email id$/) do
  mail_text_field = @b.find_element(:xpath => '//*[@id="react-modal"]/div/div/div/div[2]/div/div/div[2]/div[2]/form/div[1]/div/input')
  mail_text_field.send_keys('a')
  mail_text_field.clear
  mail_text_field = @b.find_element(:xpath => '//*[@id="react-modal"]/div/div/div/div[2]/div/div/div[2]/div[2]/form/div[1]/div/input')
  mail_text_field.send_keys('nikhita.kale@housing.com')
  wait = Selenium::WebDriver::Wait.new(:timeout => 20)
end


When(/^I entered password$/) do
  password = @b.find_element(:xpath => '//*[@id="react-modal"]/div/div/div/div[2]/div/div/div[2]/div[2]/form/div[2]/div[1]/div/input')
  password.clear
  password.send_keys('Nikita@123')
  sleep 20
end

When(/^I click on Login button$/) do
  login_button = @b.find_element(:css => 'button.s2-btn ')
  login_button.click()
  sleep 30
end

Then(/^User get successfully logged in$/) do
  name_plate= @b.find_element(:css => 'div.link-btn.name_plate').displayed?
  puts "User successfully gets logged in"
end

When(/^I click on name plate dropdown$/) do
  dropdown = @b.find_element(:xpath => '//*[@id="header"]/header/div[3]/div[6]/div/div[1]/i')
  dropdown.click()
end

Then(/^Dropdown gets opened$/) do
  dd_open = @b.find_element(:xpath => '//*[@id="header"]/header/div[3]/div[6]/div/div[2]/ul').displayed?
end

When(/^I click on Logout option$/) do
  logout = @b.find_element(:xpath => '//*[@id="header"]/header/div[3]/div[6]/div/div[2]/ul/li[5]').click
end

Then(/^User gets logout$/) do
  puts "User successfully gets logged out".blue
  @b.quit

end

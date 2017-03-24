Given(/^I navigate to the mock application$/) do
  @b = Selenium::WebDriver.for :firefox
  @b.navigate.to "https://housing.com"
  city_select = @b.find_element(:xpath,'//*[@id="header"]/header/div[1]/div[2]/div[4]/div/span/a[6]')
  city_select.click()
  sleep 10

end

When(/^I try to login with 'mail' credentials$/) do
  login_option = @b.find_element(:id => 'loginModalBtn').click
  sleep 5
  sign_in = @b.find_element(:xpath => '//*[@id="react-modal"]/div/div/div/div[2]/div/div/div/div[2]/div[4]/div[1]')
  sign_in.click()
  sleep 20
  mail_text_field = @b.find_element(:xpath => '//*[@id="react-modal"]/div/div/div/div[2]/div/div/div[2]/div[2]/form/div[1]/div/input')
  mail_text_field.send_keys('a')
  mail_text_field.clear
  mail_text_field = @b.find_element(:xpath => '//*[@id="react-modal"]/div/div/div/div[2]/div/div/div[2]/div[2]/form/div[1]/div/input')
  mail_text_field.send_keys('nikhita.kale@housing.com')
  wait = Selenium::WebDriver::Wait.new(:timeout => 20)
  password = @b.find_element(:xpath => '//*[@id="react-modal"]/div/div/div/div[2]/div/div/div[2]/div[2]/form/div[2]/div[1]/div/input')
  password.clear
  password.send_keys('Nikita@123')
  sleep 20
  login_button = @b.find_element(:css => 'button.s2-btn ')
  login_button.click()
  sleep 30
  dropdown = @b.find_element(:xpath => '//*[@id="header"]/header/div[3]/div[6]/div/div[1]/i')
  dropdown.click()
  logout = @b.find_element(:xpath => '//*[@id="header"]/header/div[3]/div[6]/div/div[2]/ul/li[5]').click
end

Then(/^I should see that I logged in 'successfully'$/) do
  puts "User logged in successfully".blue
end

When(/^I try to login with 'phone' credentials$/) do
  login_option = @b.find_element(:id => 'loginModalBtn').click
  sleep 5
  sign_in = @b.find_element(:xpath => '//*[@id="react-modal"]/div/div/div/div[2]/div/div/div/div[2]/div[4]/div[1]')
  sign_in.click()
  sleep 20
  mail_text_field = @b.find_element(:xpath => '//*[@id="react-modal"]/div/div/div/div[2]/div/div/div[2]/div[2]/form/div[1]/div/input')
  mail_text_field.send_keys('9')
  mail_text_field.clear
  mail_text_field = @b.find_element(:xpath => '//*[@id="react-modal"]/div/div/div/div[2]/div/div/div[2]/div[2]/form/div[1]/div/input')
  mail_text_field.send_keys('9763441692')
  wait = Selenium::WebDriver::Wait.new(:timeout => 20)
  password = @b.find_element(:xpath => '//*[@id="react-modal"]/div/div/div/div[2]/div/div/div[2]/div[2]/form/div[2]/div[1]/div/input')
  password.clear
  password.send_keys('Nikita@123')
  @b.quit
end

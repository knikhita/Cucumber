Given(/^I am on housing's home page$/) do
  @browser = Selenium::WebDriver.for :firefox
  @browser.navigate.to "https://beta.housing.com"
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  element = @browser.find_element(:css,'span.city-select-name').click
  sleep 5
  print @browser.current_url.blue

end

When(/^I click on Login option$/) do
  login_op = @browser.find_element(:id,'loginModalBtn')
  login_op.click()
end

Then(/^Login modal gets opened$/) do
  puts "Login modal gets opened successfully!".red
  print @browser.current_url.red
end

Given(/^I am on housing's Login modal$/) do
#signin_op = @browser.find_elements(:class,'.lg-cs-login.lg-cs')
#signin_op.click()

end

When(/^I enter mail id$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I enter password$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I press login button$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

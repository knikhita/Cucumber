Given(/^I am on housing's home page$/) do
  @browser = Selenium::WebDriver.for :firefox
  @browser.navigate.to "https://housing.com"
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)

end

Given(/^I select City mumbai$/) do
  element = @b.find_element(:xpath,'//*[@id="header"]/header/div[1]/div[2]/div[4]/div/span/a[6]')
  element.click()
  sleep 5
  print @browser.current_url.blue
end

When(/^I scroll the page to the bottom$/) do
  #footer = @browser.find_element(:class =>"footer").displayed?;
  #puts 'I got footer element'.blue
  #footer = @browser.find_element(:class =>"footer").location_once_scrolled_into_view
  footer = @browser.find_element(:class =>"ec-content").displayed?;
  puts 'I got Event element'.blue
  footer = @browser.find_element(:class =>"ec-content").location_once_scrolled_into_view
  sleep 100
  @browser.quit
end

Then(/^I will see footer of the page$/) do
  puts "I am seeing Footer now".blue
end

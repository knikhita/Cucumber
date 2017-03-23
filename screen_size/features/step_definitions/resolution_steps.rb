
Given(/^I am on housing\.com home page$/) do
  @b = Selenium::WebDriver.for :firefox
  @b.navigate.to "https://housing.com/in/buy/real-estate-pune"
  sleep 10
  # get initial window size
  puts @b.manage.window.size
end

When(/^I resize the window$/) do

  # set window size using Dimension structure
    target_resolution = Selenium::WebDriver::Dimension.new(1024, 600)
    @b.manage.window.size = target_resolution
    puts @b.manage.window.size
end



When (/^I again resize the window$/) do
  # set window size using Dimension structure
    target_resolution = Selenium::WebDriver::Dimension.new(500, 300)
    @b.manage.window.size = target_resolution
    puts @b.manage.window.size
end

Then(/^Page is adjusting as per resolution$/) do
  puts "Screen is opening in given resolution".blue
  sleep 10
  @b.quit
end

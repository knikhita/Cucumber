
Given(/^I am on demo home page$/) do
  @browser = Watir::Browser.new :firefox
  @browser.goto "http://demo.guru99.com/"
end

When(/^enter blank details for register$/) do
@browser.text_field(:name,'emailid').set(" ")
@browser.button(:name,'btnLogin').click
end

Then(/^email error should be shown$/) do
  puts "email is required!".red
  @browser.close
end

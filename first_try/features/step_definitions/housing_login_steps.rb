Given(/^I am on housing's Login modal$/) do
  @browser = Watir::Browser.new :firefox
  @browser.goto "https://housing.com/user-login?redirect_to=%2Fin%2Fbuy%2Freal-estate-mumbai&tab=login"
end

When(/^I enter incorrect details for password$/) do
  @browser.text_field(:id,'inputEmailLogin').set("1nicks52@gmail.com")
  @browser.text_field(:name,'password').set("Nikita@123")
  #@browser.button(:class,'.block.btn.common-submit.large.primary:nth-child(1)').click
  @browser.button(:class,'.common-submit:nth(0)').click
end

Then(/^I should get Incorrect Email\/Password Combination message$/) do
  puts "User logged in sucessfully".violet
  @browser.close
end

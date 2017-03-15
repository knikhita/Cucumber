#Scenario : 1st

Given(/^I am on housing home page$/) do
  @b = Selenium::WebDriver.for :firefox
  @b.navigate.to "https://housing.com"
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)


end

When(/^I click on Pune City$/) do
  city_select = @b.find_element(:xpath,'//*[@id="header"]/header/div[1]/div[2]/div[4]/div/span/a[6]')
  city_select.click()
  sleep 50

end

Then(/^Pune city gets selected$/) do
  print @b.current_url.blue
end

#Scenario : 2nd
Given(/^I am on Home page$/) do
  print "I am on PUNE CITY HOME PAGE"
end


When(/^I click on Login option$/) do
  login_option = @b.find_element(:id => 'loginModalBtn').click
  sleep 20
end

When(/^I checked if modal gets opened$/) do
  #login_modal = @b.find_element(:class => '.lg-cont').displayed?
  #puts "Login modal gets opened"
  #if (@b.find_elements(:class =>'.lg-cont').size >0)
  if (@b.find_elements(:class =>'.lg-cont'))
    puts 'Login modal gets opened'.green
  else
    puts 'Login modal NOT FOUND'.red
  end
end

When(/^I select Sign In option$/) do
  sign_in = @b.find_element(:class => '.lg-cs-login')
  sign_in.click()
  sleep 20

end

Then(/^Email & Password fields are shown$/) do
  #mail_text_field = @b.find_elements(:class => '.input.text')
  #mail_text_field.displayed?
  if (@b.find_elements(:class => '.input.text').size > 0)
    puts 'Mail text field is present'
  else
    puts 'Mail text field is NOT FOUND'
  end

  if (@b.find_elements(:class => '.input.password').size > 0)
    puts 'Password field is present'
  else
    puts 'Password field is NOT FOUND'
  end
  sleep 20

end


#Scenario : 3rd
Given(/^I am on Login modal$/) do
  puts "Login modal is available"
end

When(/^I Entered Email id$/) do
  mail_text_field = @b.find_elements(:class => '.input.text').click
  mail_text_field = @b.find_elements(:class => '.input.text').send_keys('1nicks52@gmail.com')

  sleep 20
end

When(/^I entered password$/) do
  password = @b.find_elements(:class => '.input.password').click
  password = @b.find_elements(:class => '.input.password').send_keys('Nikita@123')
end

When(/^I click on Login button$/) do
  login_button = @b.find_element(:class => '.s2-btn ')
  login_button.click()
  sleep 30
end

Then(/^User get successfully logged in$/) do
  name_plate= @b.find_element(:class => '.link-btn.name_plate').displayed?
  puts "User gets successfullylogged in"
end

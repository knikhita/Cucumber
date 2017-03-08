Given(/^I navigate to housing\.com$/) do
  @b = Selenium::WebDriver.for :firefox
  @b.navigate.to "https://housing.com"
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
end

When(/^I select Pune City$/) do
  #element = @b.find_element(:id,'[@data-city="eec306948307d1a640ac"]')
  element = @b.find_element(:xpath,'//*[@id="header"]/header/div[1]/div[2]/div[4]/div/span/a[6]')
  element.click()
  sleep 5
end

When (/^URL get changed$/) do
  print @b.current_url.blue

end

When(/^I scroll to event section$/) do
 element = @b.find_element(:class => 'ec-content').displayed?
 element = @b.find_element(:class => 'ec-content').location_once_scrolled_into_view
 sleep 100

 end

When(/^I click on Event card$/) do
    click_event = @b.find_element(:class =>'ec-content')
    click_event.click()
end

Then(/^its redirecting to event page on same tab$/) do
    print @b.current_url.blue
    puts "Event page is now displayed :)"
    sleep 10
    @b.quit
end

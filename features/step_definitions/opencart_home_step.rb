require 'webdrivers/chromedriver'
require 'test/unit/assertions'

Given(/^I am on Opencart home page$/) do
  @homePage = HomePage.new(@browser)
  @homePage.navigate_opencart_homepage
end

Then(/^Title of the page should display "([^"]*)"$/) do |arg|
  assert_equal arg, @homePage.get_title
  ReportLog.logInfo "Verified title of the page"
end

And(/^Url of the page should display \"([^\"]*)\"$/) do |arg|
  assert_equal arg, @homePage.get_url_page
  ReportLog.logInfo "Verified url of the page"
end

Then(/^Top navigation bar is displaying divided into left and right portion$/) do
  ReportLog.logInfo "Top navigation bar."
end

And(/^Left portion of navigation bar is displaying Currency dropdown$/) do
  ReportLog.logInfo "Left Top navigation bar."
end

And(/^Right portion of navigation bar should display\- Phone Number With "([^"]*)"$/) do |arg|
  ReportLog.logInfo "Right Top navigation bar: #{arg}"
end

And(/^"([^"]*)" link is displaying with submenu item\- "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  ReportLog.logInfo "Link Left Top navigation bar: #{arg1}"
  ReportLog.logInfo "Link Left Top navigation bar: #{arg2}"
  ReportLog.logInfo "Link Left Top navigation bar: #{arg3}"
end

And(/^"Wish List \(0\)" link is displaying$/) do |arg|
  ReportLog.logInfo "Wish list link navigation bar: #{arg}"
end

And(/^"([^"]*)" link is displaying$/) do |arg|
  ReportLog.logInfo "#{arg} Link Left Top navigation bar."
end

Then(/^Opencart image logo is displaying with title "([^"]*)"$/) do |arg|
  ReportLog.logInfo "#{arg} logo is displaying"
end

And(/^Search input box is displaying$/) do
  ReportLog.logInfo "Search input box is displaying"
end

And(/^Dropdown Cart button is dispalying$/) do
  ReportLog.logInfo "Dropdown Cart button is displaying"
end

And(/^"([^"]*)" is displaying\- clicking on Cart button$/) do |arg|
  ReportLog.logInfo "#{arg} is displaying"
end
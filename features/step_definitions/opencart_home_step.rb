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
  assert_equal @homePage.is_top_nav_displayed, true
  assert_equal @homePage.is_top_left_displayed, true
  assert_equal @homePage.is_top_right_displayed, true
  ReportLog.logInfo "Verified top navigation bar is displaying divided into left and right portion"
end

And(/^Left portion of navigation bar is displaying Currency dropdown$/) do
  assert_equal @homePage.is_topleft_currency, true
  ReportLog.logInfo "Verified left portion of navigation bar is displaying Currency dropdown"
end

And(/^Right portion of navigation bar should display\- Phone Number With "([^"]*)"$/) do |arg|
  assert_equal @homePage.get_topnav_contact, arg
  ReportLog.logInfo "Right Top navigation bar: #{arg}"
end

And(/^"([^"]*)" link is displaying with submenu item\- "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  ReportLog.logInfo @homePage.get_topnav_text(2)
  assert_equal @homePage.get_topnav_text(2), arg1
  @homePage.click_myaccount
  sleep 1
  ReportLog.logInfo @homePage.get_dropdown_text(1)
  assert_equal @homePage.get_dropdown_text(1), arg2
  ReportLog.logInfo @homePage.get_dropdown_text(2)
  assert_equal @homePage.get_dropdown_text(2), arg3
end

And(/^Link is displaying$/) do |table|
  # table is a table.hashes.keys # => [:Wish List]
  data = table.raw
  i = 3
  data.each { |value|
    assert_equal @homePage.get_topnav_text(i), value[0]
    ReportLog.logInfo "Link displaying: #{@homePage.get_topnav_text(i)}"
    i = i + 1
  }
end

Then(/^Opencart image logo is displaying with title "([^"]*)"$/) do |arg|
  assert_equal @homePage.get_logo_title, arg
  ReportLog.logInfo "#{arg} logo is displaying"
end

And(/^Search input box is displaying$/) do
  assert_equal @homePage.is_search_input, true
  assert_equal @homePage.is_search_icon, true
  ReportLog.logInfo "Verified Search input box with search icon"
end

And(/^Dropdown Cart button is dispalying$/) do
  assert_equal @homePage.is_cart_dropdown, true
  ReportLog.logInfo "Verified dropdown Cart button is displaying"
end

And(/^"([^"]*)" is displaying\- clicking on Cart button$/) do |arg|
  @homePage.click_cart_dropdown
  sleep 1
  assert_equal @homePage.get_cart_empty, arg
  ReportLog.logInfo "#{@homePage.get_cart_empty} is displaying"
end
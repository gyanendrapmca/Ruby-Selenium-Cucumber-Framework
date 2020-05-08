require 'webdrivers'
require 'watir'

When("I open google website") do
  @browser = Watir::Browser.new
  @browser.goto "http://google.com"
  puts "Navigated to google browser."
end

Then("I print title & url") do
  pageTitle = @browser.title
  pageUrl = @browser.url

  puts "Page Title #{pageTitle}"
  puts "Page Url: #{pageUrl}"

  @browser.quit
  puts "Browser Closed"
end
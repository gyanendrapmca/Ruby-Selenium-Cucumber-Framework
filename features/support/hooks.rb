

Before do
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--ignore-certificate-errors')
  options.add_argument('--disable-popup-blocking')
  options.add_argument('--disable-translate')
  @browser = Selenium::WebDriver.for :chrome, options: options
  @browser.manage.window.maximize
  @browser.manage.timeouts.page_load = 10
  ReportLog.logInfo "============================ Start Test Case ============================"
end

After do
  @browser.quit
  ReportLog.logInfo "============================= End Test Case ============================="
end
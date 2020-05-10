
class HomePage
  #=================================================================================
  TOPNAV = {css: 'nav#top'}
  LEFT_TOP_NAV = {css: 'nav#top div.pull-left'}
  RIGHT_TOP_NAV = {css: 'nav#top div.pull-left'}
  CURRENCY_DROPDOWN = {css: 'nav#top div.pull-left button.dropdown-toggle'}
  #=================================================================================

  def initialize(browser)
    @browser = browser
  end

  def navigate_opencart_homepage()
    @browser.navigate.to ConfigFileReader.get_url
    ReportLog.logInfo "Navigated to url: #{ConfigFileReader.get_url}"
  end

  def get_title()
    title = @browser.title
    return title;
  end

  def get_url_page()
    url = @browser.current_url
    return url;
  end

end
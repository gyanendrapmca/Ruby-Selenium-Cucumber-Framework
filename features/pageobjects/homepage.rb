
class HomePage
  #=================================================================================
  # Top Nav Section
  TOPNAV = {css: 'nav#top'}
  LEFT_TOP_NAV = {css: 'nav#top div.pull-left'}
  RIGHT_TOP_NAV = {css: 'nav#top div.pull-left'}
  CURRENCY_DROPDOWN = {css: 'nav#top div.pull-left button.dropdown-toggle'}
  CONTACT_NUMBER = {css: 'div#top-links ul>li>span'}
  MYACCOUNT = {css: 'div#top-links a>span.caret'}

  # Header Section
  LOGO = {css: 'div#logo img'}
  SEARCH_INPUT = {css: 'div#search input'}
  SEARCH_ICON = {css: 'div#search i.fa-search'}
  CART_DROPDOWN = {css: 'div#cart>button.dropdown-toggle'}
  EMPTY_DROPDOWN = {css: 'div#cart>ul.dropdown-menu p'}
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

  def is_top_nav_displayed()
    return @browser.find_element(TOPNAV).displayed?
  end

  def is_top_left_displayed()
    return @browser.find_element(LEFT_TOP_NAV).displayed?
  end

  def is_top_right_displayed()
    return @browser.find_element(RIGHT_TOP_NAV).displayed?
  end

  def is_topleft_currency()
    return @browser.find_element(CURRENCY_DROPDOWN).displayed?
  end

  def get_topnav_contact()
    return @browser.find_element(CONTACT_NUMBER).text
  end

  def get_topnav_text(index)
    return @browser.find_element(css: "div#top-links ul>li:nth-child(#{index})>a>span:nth-child(2)").text
  end

  def get_dropdown_text(index)
    return @browser.find_element(css: "div#top-links ul.dropdown-menu-right>li:nth-child(#{index})>a").text
  end

  def click_myaccount()
    @browser.find_element(MYACCOUNT).click
    ReportLog.logInfo "Clicked on My Account link"
  end

  def get_logo_title()
    return @browser.find_element(LOGO).attribute('title')
  end

  def is_search_input()
    return @browser.find_element(SEARCH_INPUT).displayed?
  end

  def is_search_icon()
    return @browser.find_element(SEARCH_ICON).displayed?
  end

  def is_cart_dropdown()
    return @browser.find_element(CART_DROPDOWN).displayed?
  end

  def click_cart_dropdown()
    @browser.find_element(CART_DROPDOWN).click
    ReportLog.logInfo "Clicked on CART dropdown button in header section"
  end

  def get_cart_empty()
    @browser.find_element(EMPTY_DROPDOWN).text
  end
end
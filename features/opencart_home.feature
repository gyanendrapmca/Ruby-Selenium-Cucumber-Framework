Feature: Launch Opencart website

  Scenario: Verify title of the Opencart home page
    Given I am on Opencart home page
    Then Title of the page should display "Your Store"
    And Url of the page should display "http://opencart.abstracta.us/"

  Scenario: Verify top navigation bar of Opencart home page
    Given  I am on Opencart home page
    Then Top navigation bar is displaying divided into left and right portion
    And Left portion of navigation bar is displaying Currency dropdown
    And Right portion of navigation bar should display- Phone Number With "123456789"
    And "My Account" link is displaying with submenu item- "Register" and "Login"
    And Link is displaying
      | Wish List (0) |
      | Shopping Cart |
      | Checkout      |

    Scenario: Verify header section of homecart page
      Given I am on Opencart home page
      Then Opencart image logo is displaying with title "Your Store"
      And Search input box is displaying
      And Dropdown Cart button is dispalying
      And "Your shopping cart is empty!" is displaying- clicking on Cart button
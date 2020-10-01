#  Test Case 1 - Launch browser and Open Google.com
require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
#driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://www.google.com/"
#driver.get "https://www.google.com/"
driver.quit
# run ok
# Test Case 4 - Open Google.comand Print current url.
require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
puts driver.manage.window.size
driver.navigate.to " https://www.google.com/"
puts driver.current_url
driver.quit







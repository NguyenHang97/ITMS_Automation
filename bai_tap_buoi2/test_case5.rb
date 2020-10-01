# Test Case 5 - Open Google.comand Print Page source.
require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
puts driver.manage.window.size
driver.navigate.to "https://www.google.com/"
# in ra mã nguồn của trang
puts driver.page_source
driver.quit
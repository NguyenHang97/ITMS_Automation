# Test Case 6 – Get page title after searching with Google.com
require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
puts driver.manage.window.size
driver.navigate.to "http://gogle.com/"
# nhập itms coaching và tìm kiếm bằng nhấn enter
driver.find_element(:name, "q").send_keys("iTMS Coaching", :enter)
sleep 5
puts driver.title
driver.quit
### run ok nha
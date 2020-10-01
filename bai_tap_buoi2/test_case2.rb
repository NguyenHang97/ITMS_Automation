#       Test Case 2 - Open Google.comand maximize browser window.   #
require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome

#        maximize window: run với độ phân giải lớn nhất
driver.manage.window.maximize
# in ra để xem cái size nó như thế nào?
puts driver.manage.window.size

#        set window size using Dimension struct (set kích thước theo ý mình muốn) set cho wedriver
target_size = Selenium::WebDriver::Dimension.new(360, 640)
#     lấy độ set kích thước gán cho chrome
#driver.manage.window.size = target_size
#puts target_size
driver.navigate.to "https://www.google.com/"
search = driver.find_element(:name, "q")
search.send_keys("mỹ tâm", :enter)
# ê chrome chụp cho t cái hình này nha và lưu lại trong thư mục này (./)
driver.save_screenshot("./mytam1.png")
driver.quit

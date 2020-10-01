require 'selenium-webdriver'

# get initial window size
driver = Selenium::WebDriver.for :firefox
puts driver.manage.window.size

# set window size using Dimension struct
target_size = Selenium::WebDriver::Dimension.new(1024, 768)
driver.manage.window.size = target_size
puts driver.manage.window.size

# resize window
driver.manage.window.resize_to(480, 320)
puts driver.manage.window.size

# maximize window
driver.manage.window.maximize
puts driver.manage.window.size

driver.quit
# ĐÂY LÀ BÀI HƯỚNG DẪN TRÊN MẠNG
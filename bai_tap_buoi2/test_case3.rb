#  Test Case 3 - Open Google.comand Print it's Page title.
# nhớ nè đặt mấy cái tên biến là không viết hoa à nha
require "selenium-webdriver"
chrome1 = Selenium::WebDriver.for :chrome
# 
chrome1.manage.window.maximize
chrome1.get "https://www.google.com/"
# in ra bằng cách đặt biến
url = chrome1.current_url
title = chrome1.title
puts "url: #{url}"
puts "title: #{title}" 
# in ra thẳng luôn
#puts chrome1.current_url
#puts chrome1.title
chrome1.quit





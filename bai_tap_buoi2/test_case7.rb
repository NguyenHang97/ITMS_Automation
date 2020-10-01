# Test Case 7 – Input form
require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
driver.get "https://itmscoaching.herokuapp.com/form"
driver.manage.window.maximize
puts driver.manage.window.size
# -First name: iTMS
# ĐẶC BIỆT NÈ MÌNH K CẦN TÌM ELEMENT CỦA TRANG WEB NỮA NHA, NHẤN tab rùi nhâp thui
# mình tìm 1 element đầu tiên thoi
driver.find_element(:id, "first-name").send_keys("iTMS", :tab, "Coaching", :tab, "QA")
# Highest level of education (chọn option)
driver.find_element(:xpath, "//input[@id='radio-button-2']").click
# Sex chọn Male
check_box1 = driver.find_element(:id, "checkbox-1").click
# Years of experience (chọn 2-4) note: dropdown-list
dropdown_list = driver.find_element(:xpath, "//select[@id='select-menu']")
# muốn chọn option trong dropdown-list thì phải khai báo hàm select tới cái vị trí dropdowm_list đó
year_of_exp = Selenium::WebDriver::Support::Select.new(dropdown_list)
year_of_exp.select_by(:index, "2")
#year_of_exp.select_by(:value, "2")
#year_of_exp.select_by(:text, "2-4")

# -Date: 27/10/2025
driver.find_element(:xpath, "//input[@id='datepicker']").send_keys("27/10/2025")
sleep 5
#driver.find_element(:Link_text, "Submit").click
driver.find_element(:xpath, "//a[contains(text(),'Submit')]").click
sleep 5
# có 2 cách chụp hình lưu ở thư mục hiện tại
#driver.save_screenshot("h1.png")
driver.save_screenshot("./h2.png")
driver.quit
# ok ok ĐÃ RUN SUCCESSFULLY

###driver.action.send_keys(elementVisible, :tab).send_keys(elementVisible, :return).perform



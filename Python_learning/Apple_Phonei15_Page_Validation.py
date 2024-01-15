from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from Resources.Variables import login_url

chrome_driver_path = '/Users/sonal/Code/WebDemo-master/docs/chromedriver'
chrome_options = webdriver.ChromeOptions()
# chrome_options.add_argument('--headless')
chrome_options.add_argument('--start-maximized')
chrome_options.add_argument('--disable-extensions')
chrome_options.add_argument('--disable-popup-blocking')
driver = webdriver.Chrome(options=chrome_options)

try:
    driver.get(login_url)
    driver.implicitly_wait(30)
    driver.save_screenshot('/Users/sonal/Code/WebDemo-master/Output/Open URL.png')
    print("Webdriver Opened Successfully")
finally:
    driver.quit()
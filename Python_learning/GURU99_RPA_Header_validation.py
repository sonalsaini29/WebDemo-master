from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

# Replace with the path to your chromedriver executable
chrome_driver_path = '/Users/sonal/Code/WebDemo-master/docs/chromedriver'

# URL for guru99 login page
login_url = 'https://www.guru99.com/using-robot-api-selenium.html'

# Create ChromeOptions object
chrome_options = webdriver.ChromeOptions()

# Add options if needed, e.g., headless mode
# chrome_options.add_argument('--headless')

# Specify the chromedriver executable path when creating the Chrome instance
driver = webdriver.Chrome(options=chrome_options)

try:
    # Open the guru99 login page
    driver.get(login_url)

    # Wait for a while to allow the login process to complete
    driver.implicitly_wait(30)

    agree_btn = driver.find_element(By.XPATH, '//button/span[text()="AGREE"]')
    agree_btn.click()
    Tab_Testing = driver.find_element(By.XPATH,'//a/span[text()="Testing"]')
    Tab_Testing.click()
    Sub_RPA = driver.find_element(By.XPATH,'//ul[@class="sub-menu clicked"]/li/a[text()="RPA"]')
    Sub_RPA.click()
    page_header = driver.find_element(By.XPATH,'//header/h1[text()="RPA Tutorial for Beginners: Learn Robotic Process Automation"]')
    page_header.is_displayed()
    print("User able to view the RPA navigation")

    # Wait for a while to allow the login process to complete
    driver.implicitly_wait(30)

finally:
    # Close the browser window
    driver.quit()
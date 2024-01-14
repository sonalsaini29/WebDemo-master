from Resources.Variables import login_url

def login_config(login_url):
    chrome_driver_path = '/Users/sonal/Code/WebDemo-master/docs/chromedriver'
    chrome_options = webdriver.ChromeOptions()
    # chrome_options.add_argument('--headless')
    chrome_options.add_argument('--start-maximized')
    chrome_options.add_argument('--disable-extensions')
    chrome_options.add_argument('--disable-popup-blocking')
    driver = webdriver.Chrome(options=chrome_options)
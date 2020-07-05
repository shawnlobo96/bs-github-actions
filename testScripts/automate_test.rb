require	'rubygems'
require	'selenium-webdriver'

#Input Capabilities
caps = Selenium::WebDriver::Remote::Capabilities.new
caps["os"] = "Windows"
caps["os_version"] = "10"
caps["browser"] = "Chrome"
caps["browser_version"] = "81"
caps["resolution"] = "1920x1080"
caps["build"] = "GitHub Actions Test Build 01"
caps["name"] = "myapp test 2"
caps["browserstack.local"] = "true"
caps["browserstack.debug"] = "true"
caps["browserstack.networkLogs"] = "true"
caps["browserstack.timezone"] = "New York"
caps["browserstack.selenium_version"] = "4.0.0-alpha-2"

driver = Selenium::WebDriver.for(:remote,
	:url => "http://souravkundu5:8rVfmauhSSuDRTH1xxRt@hub-cloud.browserstack.com/wd/hub",
	:desired_capabilities => caps)

driver.navigate.to "http://localhost:3000"
puts driver.title
driver.close()
driver.quit()

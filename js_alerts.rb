require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "checks for buttons" do
  it "finds all buttons" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/javascript_alerts"
    js_alerts = driver.find_elements(css:'#ul li')
  end
end

describe "automates alert popup" do
  it "triggers alert, confirms message" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/javascript_alerts"

    driver.find_element(css:'#content > div > ul > li:nth-child(1) > button').click
    alert = driver.switch_to.alert
    alert_text = alert.text
    alert.accept

    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until { driver.find_element(css:'#result').displayed?}
  end
end

describe "automates confirmation alert" do
  it "triggers confirmation, confirms message" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/javascript_alerts"

    driver.find_element(css:'#content > div > ul > li:nth-child(2) > button').click
    confirm = driver.switch_to.alert
    confirm_text = confirm.text
    confirm.accept

    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until { driver.find_element(css:'#result').displayed?}
  end
end

describe "Denys confirmation alert" do
  it "triggers confirmation, denys message" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/javascript_alerts"

    driver.find_element(css:'#content > div > ul > li:nth-child(2) > button').click
    confirm = driver.switch_to.alert
    confirm_text = confirm.text
    confirm.dismiss

    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until { driver.find_element(css:'#result').displayed?}
  end
end


describe "automates prompt" do
  it "triggers prompt, confirms message" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/javascript_alerts"

    driver.find_element(css:'#content > div > ul > li:nth-child(3) > button').click
    prompt = driver.switch_to.alert
    prompt.send_keys('YES')
    prompt.accept

    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until { driver.find_element(css:'#result').displayed?}
  end
end

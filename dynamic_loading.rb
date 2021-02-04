require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automating dynamic page elements" do
  it "clicks button and waits for hidden message" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/dynamic_loading"
    example_one = driver.find_element(xpath:'//*[@id="content"]/div/a[1]')
    example_one.click
    driver.navigate.to "https://the-internet.herokuapp.com/dynamic_loading/1"
    button = driver.find_element(xpath:'//*[@id="start"]/button')
    button.click
    wait = Selenium::WebDriver::Wait.new(timeout: 15)
    wait.until { driver.find_element(xpath: '//*[@id="finish"]/h4').displayed?}
  end
  it "clicks button and waits for hidden message 2" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/dynamic_loading"
    example_two = driver.find_element(xpath:'//*[@id="content"]/div/a[2]')
    example_two.click
    driver.navigate.to "https://the-internet.herokuapp.com/dynamic_loading/2"
    start = driver.find_element(xpath:'//*[@id="start"]/button')
    start.click
    wait = Selenium::WebDriver::Wait.new(timeout: 20)
    wait.until { driver.find_element(xpath: '//*[@id="finish"]/h4').displayed?}
  end
end

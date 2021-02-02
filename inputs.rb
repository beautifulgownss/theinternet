require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automate inputs" do
  it "inputs the number 3" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/inputs"
    inputs = driver.find_element(xpath: '//*[@id="content"]/div/div/div/input')
    inputs.send_keys('3')
  end
end

require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automate closing ad" do
  it "clicks close" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/entry_ad"
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    driver.find_element(xpath:'//*[@id="modal"]/div[2]/div[3]/p')
    driver.quit
  end
end

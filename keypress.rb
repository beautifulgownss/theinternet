require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automate form text field" do
  it "shows the result after input" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/key_presses?"
    textfield = driver.find_element(id: 'target').send_keys('hello world')
    wait = Selenium::WebDriver::Wait.new(timeout: 20)
		wait.until {driver.find_element(id: 'result')}
		expect(driver.find_element(id: 'result').text).to eql('You entered: D')
    end
end

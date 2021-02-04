#rspec basic template
require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automating dynamic controls" do
  it "removes adds and removes checkboxes" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/dynamic_controls"

    checkbox = driver.find_element(xpath:'//*[@id="checkbox"]/input')
    checkbox.click
    remove = driver.find_element(xpath: '//*[@id="checkbox-example"]/button')
    remove.click

    wait = Selenium::WebDriver::Wait.new(timeout: 15)
    wait.until { driver.find_element(id: 'message').displayed? }

    add = driver.find_element(xpath: '//*[@id="checkbox-example"]/button')
    add.click

    wait = Selenium::WebDriver::Wait.new(timeout: 15)
    wait.until { driver.find_element(id: 'message').displayed? }

    checkbox_new = driver.find_element(id:'checkbox')
    checkbox_new.click
  end
  it "Enables and disables form field" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/dynamic_controls"

    enable = driver.find_element(xpath: '//*[@id="input-example"]/button')
    enable.click

    wait = Selenium::WebDriver::Wait.new(timeout: 15)
    wait.until { driver.find_element(id: 'message').displayed? }

    input = driver.find_element(xpath: '//*[@id="input-example"]/input')
    input.send_keys('hello world')

    disable = driver.find_element(xpath:'//*[@id="input-example"]/button')
    disable.click
    
    wait = Selenium::WebDriver::Wait.new(timeout: 15)
    wait.until { driver.find_element(id: 'message').displayed? }
  end
end

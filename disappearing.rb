#rspec basic template
require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automate tab" do
  it "clicks about" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/disappearing_elements"
    about = driver.find_element(xpath: '//*[@id="content"]/div/ul/li[2]/a')
    about.click
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until { driver.find_element(xpath: '/html/body/h1').displayed? }
  end
end

describe "automate tab" do
  it "clicks home" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/disappearing_elements"
    about = driver.find_element(xpath: '//*[@id="content"]/div/ul/li[1]/a')
    about.click
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until { driver.find_element(id: 'content').displayed? }
  end
end

describe "automate tab" do
  it "clicks contact us" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/disappearing_elements"
    about = driver.find_element(xpath: '//*[@id="content"]/div/ul/li[3]/a')
    about.click
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until { driver.find_element(xpath: '/html/body/h1').displayed? }
  end
end

describe "automate tab" do
  it "clicks portfolio" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/disappearing_elements"
    about = driver.find_element(xpath: '//*[@id="content"]/div/ul/li[4]/a')
    about.click
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until { driver.find_element(xpath: '/html/body/h1').displayed? }
  end
end

#rspec basic template
require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automate adding and deleting items" do
  it "add element then delete" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/add_remove_elements/"
    add = driver.find_element(xpath: '//*[@id="content"]/div/button')
    add.click
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
		wait.until {driver.find_element(class:'added-manually')} 
  end
end

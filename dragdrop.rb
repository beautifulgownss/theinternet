require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "describe it" do
  it "write what it does" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/drag_and_drop"
    box_a = driver.find_element(id: 'column-a')
    box_b = driver.find_element(id: 'column-b')
    driver.action.drag_and_drop(box_b,box_a).perform
  end
end

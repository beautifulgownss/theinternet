require "selenium-webdriver"
require "webdrivers"
require "rspec"


describe "automating checkboxes" do
  it "clicks checkbox" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/checkboxes"
    box_one = driver.find_element(xpath: '//*[@id="checkboxes"]/input[1]')
    box_one.click
    box_two = driver.find_element(xpath: '//*[@id="checkboxes"]/input[2]')
    box_two.click
  end
end

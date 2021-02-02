require "selenium-webdriver"
require "webdrivers"
require "rspec"


describe "automating dropdown" do
  it "selects dropdown item 2 " do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/dropdown"
    dropdown_menu = driver.find_element(id: 'dropdown')
    dropdown_menu.click
    option2 = driver.find_element(css:'option[value="2"]')
    option2.click
  end
end


describe "automating dropdown" do
  it "selects a dropdown item 1" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/dropdown"
    dropdown_menu = driver.find_element(id: 'dropdown')
    dropdown_menu.click
    option2 = driver.find_element(css:'option[value="1"]')
    option2.click
  end
end

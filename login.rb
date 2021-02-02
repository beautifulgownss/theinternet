require "selenium-webdriver"
require "webdrivers"
require "rspec"


describe "automate login" do
  it "enters username and password" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/login"
    driver.find_element(id: 'username').send_keys('tomsmith')
    driver.find_element(id: 'password').send_keys('SuperSecretPassword!')
    driver.find_element(xpath: '//*[@id="login"]/button/i').click
  end
end

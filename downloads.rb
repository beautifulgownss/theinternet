require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automate downloads" do
  it "download files" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/download"
    driver.find_element(xpath:'//*[@id="content"]/div/a[1]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[2]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[3]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[4]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[5]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[6]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[7]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[8]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[9]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[10]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[11]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[12]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[13]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[14]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[15]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[16]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[17]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[18]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[19]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[20]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[21]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[22]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[23]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[24]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[25]').click
    driver.find_element(xpath:'//*[@id="content"]/div/a[26]').click
  end
end

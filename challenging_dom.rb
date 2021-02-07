require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automating buttons" do
  it "clicks the buttons" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/challenging_dom"
    driver.find_element(xpath:'/html/body/div[2]/div/div/div/div/div[1]/a[1]').click
    driver.find_element(xpath:'/html/body/div[2]/div/div/div/div/div[1]/a[2]').click
    driver.find_element(xpath:'/html/body/div[2]/div/div/div/div/div[1]/a[3]').click
  end
end

describe "check top row headers"  do
  it "finds and check the text" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/challenging_dom"
    lorem = driver.find_element(xpath: '/html/body/div[2]/div/div/div/div/div[2]/table/thead/tr/th[1]')
    expect(lorem.text).to eql('Lorem')

    ipsum = driver.find_element(xpath: '/html/body/div[2]/div/div/div/div/div[2]/table/thead/tr/th[2]')
    expect(ipsum.text).to eql('Ipsum')

    dolor = driver.find_element(xpath: '/html/body/div[2]/div/div/div/div/div[2]/table/thead/tr/th[3]')
    expect(dolor.text).to eql('Dolor')

    sit = driver.find_element(xpath: '/html/body/div[2]/div/div/div/div/div[2]/table/thead/tr/th[4]')
    expect(sit.text).to eql('Sit')

    amet = driver.find_element(xpath: '/html/body/div[2]/div/div/div/div/div[2]/table/thead/tr/th[5]')
    expect(amet.text).to eql('Amet')

    diceret = driver.find_element(xpath: '/html/body/div[2]/div/div/div/div/div[2]/table/thead/tr/th[6]')
    expect(diceret.text).to eql('Diceret')

    action = driver.find_element(xpath: '/html/body/div[2]/div/div/div/div/div[2]/table/thead/tr/th[7]')
    expect(action.text).to eql('Action')
  end
end

describe "check canvas" do
  it "locates the canvas" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/challenging_dom"
    canvas = driver.find_element(id:'canvas')
    expect(canvas).display

  end
end

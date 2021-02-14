require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automating right click alert" do
  it "right clicks and closes alert" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://the-internet.herokuapp.com/context_menu"
    menu = driver.find_element(id:'hot-spot')
    driver.action.context_click(menu).send_keys(
    :arrow_down).send_keys(
    :arrow_down).send_keys(
    :arrow_down).send_keys(
    :enter).perform

    alert = driver.switch_to.alert
    expect(alert.text).to eq('You selected a context menu')
    alert_text = alert.text
    alert.accept

  end
end

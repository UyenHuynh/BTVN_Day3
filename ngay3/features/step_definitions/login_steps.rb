Given('Login successfully') do
    require 'selenium-webdriver'
    @driver = Selenium::WebDriver.for :chrome
    @driver.get('http://the-internet.herokuapp.com/login')

end

When('user enter {string} for the username and {string} for the password') do |string, string2|
    $driver.find_element(css: "#username").send_keys string
    $driver.find_element(css: "#password").send_keys string2
    $driver.find_element(css: ".fa.fa-2x.fa-sign-in").click
   
end

Then('a message {string} should be displayed') do |string|
    text = $driver.find_element(css: "#flash").text
    expect(text).to include(string)
    @driver.quit
  end
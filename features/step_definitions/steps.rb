require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for:chrome

wait = Selenium::WebDriver::Wait.new(:timeout => 10) #wait timeout
second = 10

Given("open the website") do
    
	driver.get 'https://skillacademy.com/'
    driver.manage.window.maximize
  end

Then("search keyword") do

	driver.find_element(:xpath,'//input[@class="css-1j8fjmh"]').click
	driver.find_element(:xpath,'//input[@class="css-1j8fjmh"]').send_keys 'data analyst'
	
	driver.find_element(:xpath,'//img[@alt="Search Black"]').click
	sleep(second)
  end

# end


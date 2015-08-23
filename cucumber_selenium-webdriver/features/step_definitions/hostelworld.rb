require_relative '../lib/page_object_model.rb'

World(Mainpage,SearchResultPage)

Given(/^open hostelworld main site$/) do
  @driver.get base_url
  Kernel.puts "#{base_url} was opened"
end

Given(/^search for property in "(.*?)"$/) do |arg1|
  @element=@driver.find_element(:css=>main_page_search_field)
  @element.send_keys("#{arg1}")
  sleep 1
  @element=@driver.find_element(:css=>main_page_change_focus).click
  @element=@driver.find_element(:css=>main_page_search_button).click
end

When(/^sort by "(.*?)" is selected$/) do |arg1|
  @element=@driver.find_element(:css=>search_result_page_sort_button).click
  Kernel.puts "Sort button clicked..."
  @element=@driver.find_element(:css=>send("search_result_page_sort_by_#{arg1}")).click
end

Then(/^Property are displayed by name in alphabetical order$/) do
  get_elements_by_names
  get_elements_by_names.each { |e| Kernel.puts "Available property sorted by name: #{e}" }
  get_elements_by_names.should == get_elements_by_names.sort
end

Then(/^Property are displayed by price$/) do
  get_elements_by_prices
  get_elements_by_prices.each { |e| Kernel.puts "Available property sorted by price: #{e}" }
  get_elements_by_prices.should == get_elements_by_prices.sort
end




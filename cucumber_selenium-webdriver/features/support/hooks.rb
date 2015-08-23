Before do |scenario|
  Kernel.puts "Starting scenario: #{scenario.title}..."
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.window.maximize
  Kernel.puts 'Browser created...'
end

After do |scenario|
    Kernel.puts "Scenario finished: #{scenario.title}."
    @driver.quit
    Kernel.puts 'Browser closed.'
      if scenario.failed?
        Kernel.puts "#{scenario.title}.capitalize FAILED: #{scenario.exception.message}"
      end
end

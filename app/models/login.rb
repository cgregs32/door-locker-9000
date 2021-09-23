class Login < Kimurai::Base

  @driver = :selenium_chrome
  @engine = :selenium_chrome

  def self.login(url)
    @start_urls = [url]
    self.crawl!
  end

  def parse(response, url:, data: {})
    response.xpath("//div[@class='login-form flex__item flex__item--fill']").each do |login|
      needed_elements = {}


      form =  browser.find_by_id("loginForm")
      
      browser.find_by_id("username").fill_in(:with => @username)

      browser.find("//input[@name='password' and @type='password' and @class='form-control login__input trn']").fill_in(with: @password)
        
      browser.click_button(text: "Log In")
      debugger

      
      browser.find("//button[@class='rounded-button lockButton']").click


      # item[:title]      = vehicle.css('h2.listing-row__title')&.text&.squish
      # item[:price]      = vehicle.css('span.listing-row__price')&.text&.squish&.delete('^0-9').to_i
      # item[:stock_type] = vehicle.css('div.listing-row__stocktype')&.text&.squish
      # item[:miles]      = vehicle.css('span.listing-row__mileage')&.text&.squish&.delete('^0-9').to_i
      # item[:exterior_color] = vehicle.css('ul.listing-row__meta li')[0]&.text&.squish.gsub('Ext. Color: ', '')
      # item[:interior_color] = vehicle.css('ul.listing-row__meta li')[1]&.text&.squish.gsub('Int. Color: ', '')
      # item[:transmission] = vehicle.css('ul.listing-row__meta li')[2]&.text&.squish.gsub('Transmission: ', '')
      # item[:drivetrain]   = vehicle.css('ul.listing-row__meta li')[3]&.text&.squish.gsub('Drivetrain: ', '')

    end
  end
end

class LockAttempt < Kimurai::Base
  @engine = :mechanize

  def self.lock(url)
    @start_urls = [url]
    self.crawl!
  end

  def parse(response, url:, data: {})
    needed_elements = {}


    form =  browser.find_by_id("loginForm")
    
    browser.find_by_id("username").fill_in(:with => @username)
    password_element = browser.all("//input[@name='password']").map {|e| e.fill_in(with: @password)}
    browser.find("//button[@type='submit']").click
  end
end

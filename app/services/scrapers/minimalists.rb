class Scrapers::Minimalists
  attr_accessor :connector
  BASE_URL='http://theminimalists.com'

  def initialize
    @connector = Connector.new
  end

  def scrape
    page.css('.post-feature').children
  end

  private
  def page
    raw = connector.get(BASE_URL)

    @page ||= Nokogiri::HTML(raw)
  end
end

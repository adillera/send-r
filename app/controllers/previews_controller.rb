class PreviewsController < ApplicationController
  def index
    @things = Scrapers::Minimalists.new.scrape
  end
end

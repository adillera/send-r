class Connector
  def get(url)
    HTTParty.get(url)
  end
end

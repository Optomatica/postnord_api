module API
  HOST = 'https://atapi2.postnord.com'
  VERSION = 'v5'
  KEY = ENV['postnord_key']
  def self.Url
    "#{HOST}/#{VERSION}"
  end
end

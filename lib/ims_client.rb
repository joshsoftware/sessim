require 'httparty'

class ImsClient
  include HTTParty
  base_uri(ENV['IMS_SERVER'] || 'localhost:3000')

  def self.dispenser_sync(params)
    self.post('/kvcom/dispensers/sync.json', {:body => params})
  end

  def self.plc_sync
    self.get('/kvcom/plc/sync.json')
  end

end

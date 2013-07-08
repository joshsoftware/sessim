require 'httparty'

class ImsClient
  include HTTParty
  base_uri(ENV['ims_server'] || 'localhost:3000')

  def self.dispenser_sync(params = nil)
    params ||= {
      :dispense => [
        :project_id => '1', 
        :user_id => 'E-1', 
        :plc_id => 1,  
        :dispenser_id => '1',  
        :quantity => 10, 
        :timestamp => Time.now.to_i
      ]
    }

    self.post('/kvcom/dispensers/sync.json', {:body => params})
  end

end

class ParkService

  def self.conn
    Faraday.new(url: "https://developer.nps.gov/api/v1/") do |faraday|
      faraday.params['api_key'] = ENV['api_key']
    end
  end

  def self.park_data_by_state(state_code)
    response = conn.get("parks?stateCode=#{state_code}")
    
    json = JSON.parse(response.body, symbolize_names: true)
  end

end
class ParkService
  class << self
    def connection
      Faraday.new(url: 'https://developer.nps.gov/api/v1/') do |faraday|
        faraday.params['api_key'] = ENV['api_key']
      end
    end

    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def parks_by_state(state)
      response = connection.get("parks?stateCode=#{state}")
      parse_json(response)
    end
  end
end

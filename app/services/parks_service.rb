class ParksService < BaseService
  def self.get_parks_data(state)
    response = conn("https://developer.nps.gov").get("/api/v1/parks?statecode=#{state}") do |faraday|
      faraday.params["api_key"] = ENV["parks_api_key"]
    end
    get_json(response)
  end
end

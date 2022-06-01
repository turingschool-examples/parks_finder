class ParksFacade
  def self.create_park(state)
    json = ParksService.get_parks_data(state)
    json[:data].map do |data|
      Park.new(data)
    end
  end

  def self.total_parks_found(state)
    json = ParksService.get_parks_data(state)
    json[:total]
  end
end

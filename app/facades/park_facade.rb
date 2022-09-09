class ParkFacade

  def self.service(state_code)
    data = ParkService.park_data_by_state(state_code)

    @parks = data[:data].map do |park|
      Park.new(park)
    end
  end


end
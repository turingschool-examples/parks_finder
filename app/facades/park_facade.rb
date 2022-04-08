class ParkFacade
  class << self
    def parks_by_state(state)
      response = ParkService.parks_by_state(state)
      response[:data].map do |data|
        Park.new(data)
      end
    end
  end
end

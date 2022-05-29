class Park
  attr_reader :name, :description, :direction_info, :hours

  def initialize(data)
    @name = data[:fullName]
    @description = data[:description]
    @direction_info = data[:directionsInfo]
    @hours = data[:operatingHours][0][:standardHours]
  end
end

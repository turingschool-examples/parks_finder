class Park

  attr_reader :full_name,
              :description,
              :direction_info,
              :standard_hours

  def initialize(data)
    @full_name = data[:fullName]
    @description = data[:description]
    @direction_info = data[:directionsInfo]
    @standard_hours = data[:operatingHours].first[:standardHours]
  end

end
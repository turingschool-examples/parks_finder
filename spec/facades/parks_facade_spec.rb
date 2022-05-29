require "rails_helper"

RSpec.describe ParksFacade do
  it "creates park poros", :vcr do
    park = ParksFacade.create_park("TN")
    expect(park).to be_an(Array)
  end
end

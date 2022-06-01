require "rails_helper"

RSpec.describe Park do
  it "exists and has attributes", :vcr do
    data = {description: "Park Test Description"}
    park = Park.new(data)
    expect(park).to be_an_instance_of(Park)
    expect(park.description).to eq(data[:description])
  end
end

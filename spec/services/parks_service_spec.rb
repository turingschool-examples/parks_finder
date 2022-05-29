require "rails_helper"

RSpec.describe ParksService do
  describe "API state park endpoint" do
    it "gets park data from endpoint", :vcr do
      json = ParksService.get_parks_data("TN")

      expect(json[:data][0][:states]).to eq("TN")
      expect(json[:data][0]).to have_key(:description)
    end
  end
end

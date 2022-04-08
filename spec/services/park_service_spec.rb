require 'rails_helper'

RSpec.describe 'Park Service' do
  describe 'class methods' do

    it '.top_rated_parks', :vcr do
      parks = ParkService.parks_by_state("MT")

      expect(parks).to be_a(Hash)
      expect(parks[:data]).to be_an(Array)

      parks_data = parks[:data]

      parks_data.each do |data|
        expect(data).to have_key(:id)
        expect(data[:id]).to be_a(String)

        expect(data).to have_key(:url)
        expect(data[:url]).to be_a(String)

        expect(data).to have_key(:activities)
        expect(data[:activities]).to be_a(Array)

        parks_activities = data[:activities]

        parks_activities.each do |activity|

          expect(activity).to have_key(:id)
          expect(activity[:id]).to be_a(String)

          expect(activity).to have_key(:name)
          expect(activity[:name]).to be_a(String)
        end
      end
    end
  end
end

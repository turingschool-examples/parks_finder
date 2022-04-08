require 'rails_helper'

RSpec.describe ParkFacade do
  context 'class methods' do
    context '.parks_py_state' do
      it 'creates park poros', :vcr do

        parks = ParkFacade.parks_by_state("MT")
        
        expect(parks).to be_a(Array)


        parks.each do |park|
          expect(park).to be_an_instance_of(Park)
        end
      end
      it 'creates park poros with attributes', :vcr do

        parks = ParkFacade.parks_by_state("CA")

        expect(parks).to be_a(Array)


        parks.each do |park|
          expect(park).to be_an_instance_of(Park)
        end
      end
    end
  end
end

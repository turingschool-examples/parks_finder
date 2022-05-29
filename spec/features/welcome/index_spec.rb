require "rails_helper"

RSpec.describe "Welcome Index Page", type: :feature do
  it "displays area to search parks by state", :vcr do
    visit root_path

    select "Tennessee"
    click_button "Find Parks"

    expect(current_path).to eq(parks_path)
    expect(page.status_code).to eq(200)
    # expect(page).to have_content(ParksFacade.total_parks_found)
    # expect(ParksFacade.total_parks_found).to eq(15)
    # expect(page).to have_content(park.name)
    # expect(page).to have_content(park.description)
    # expect(page).to have_content(park.direction_info)
    # expect(page).to have_content(park.hours)
  end
end

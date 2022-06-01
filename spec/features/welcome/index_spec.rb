require "rails_helper"

RSpec.describe "Welcome Index Page", type: :feature do
  it "displays area to search parks by state", :vcr do
    visit root_path

    select "Tennessee"
    click_button "Find Parks"

    expect(current_path).to eq(parks_path)
    expect(page.status_code).to eq(200)
    expect(page).to have_content(ParksFacade.total_parks_found("TN"))
    expect(ParksFacade.total_parks_found("TN").to_i).to eq(15)
    expect(page).to have_content("Park Name:")
    expect(page).to have_content("Park Description:")
    expect(page).to have_content("Park Direction Info:")
    expect(page).to have_content("Park Hours of Operation:")
  end
end

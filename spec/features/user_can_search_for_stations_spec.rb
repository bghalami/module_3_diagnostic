require 'rails_helper'

describe "As a guest" do
  describe "when I search for a zip code" do
    it "it should display the 10 closest stations within 6 miles sorted by distance" do
      # As a user
      # When I visit "/"
      "XDKiRmdoHJYDaDUXiyIwdWvWxv1OCvKa9e3Z4hon"
      visit "/"
      # And I fill in the search form with 80203 (Note: Use the existing search form)
      fill_in "q", with: '80203'
      # And I click "Locate"
      click_on("Locate")
      # Then I should be on page "/search"
      expect(current_path).to eq("/search")
      # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
      expect(page).to have_selector('result_card', count: 10)
      expect(page).to have_content()
      # And the stations should be limited to Electric and Propane
      expect(page).to have_content()

      # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
      expect(page).to have_content("Name: ")
      expect(page).to have_content("Address: ")
      expect(page).to have_content("Fuel Types: ")
      expect(page).to have_content("Distance: ")
      expect(page).to have_content("Access Times: ")
    end
  end
end

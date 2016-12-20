require 'rails_helper'

RSpec.feature "UnauthenticatedUserViewsHotReads", type: :feature do
  context "one url has been read" do
    scenario "they see the top read urls" do
      Read.create(url: "www.example.com/1")

      visit root_path

      expect(page).to have_content "Hot Reads!"
      expect(page).to have_content "www.example.com/1"
    end
  end
end

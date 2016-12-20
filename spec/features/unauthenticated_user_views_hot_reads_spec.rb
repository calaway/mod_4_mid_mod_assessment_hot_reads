require 'rails_helper'

RSpec.feature "UnauthenticatedUserViewsHotReads", type: :feature do
  context "one url has been read" do
    scenario "they see the top read urls" do
      post "/reads", read: {url: "www.example.com"}
    end
  end
end

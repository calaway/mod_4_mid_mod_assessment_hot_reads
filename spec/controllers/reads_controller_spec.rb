require 'rails_helper'

RSpec.describe ReadsController, type: :controller do
  scenario "Post url to database" do
    post "/reads", read: {url: "www.example.com"}
  end
end

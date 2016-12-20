require 'rails_helper'

RSpec.describe ReadsController, type: :controller do
  scenario "Post url to database" do
    params = {read: {url: "www.example.com"}}

    expect {
      post :create, params: params
    }.to change{Read.count}.from(0).to(1)

    expect(Read.last.url).to eq "www.example.com"
  end
end

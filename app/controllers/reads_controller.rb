class ReadsController < ApplicationController
  def create
    Read.create(url: params["read"]["url"])
  end
end

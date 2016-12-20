class ReadsController < ApplicationController
  def create
    Read.create(url: params["read"]["url"])
  end

  def index
    @reads = Read.all
  end
end

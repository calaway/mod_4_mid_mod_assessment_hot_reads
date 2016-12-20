class ReadsController < ApplicationController
  def create
    read = Read.create(url: params["read"]["url"])
    render json: read, status: 201
  end

  def index
    @reads = Read.all
  end
end

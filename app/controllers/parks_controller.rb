class ParksController < ApplicationController

  def index
    if params[:name]
      name = params[:name]
    end
    if params[:location]
      location = params[:location]
    end
    @parks = Park.search(name, location)
    json_response(@parks)
  end

  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create!(park_params)
    json_response(@park, :created)
  end

  def update
    @park = Park.find(params[:id])
    if @park.update!(park_params)
      render status: 200, json: { message: "Park successfully updated!" }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    if @park.destroy!
      render status: 200, json: { message: "Park successfully destroyed" }
    end
  end

  def random
  end

  private

  def park_params
    params.permit(:name, :location, :review, :rating)
  end
end
class ListingsController < ApplicationController
  before_action :find_listing, only: [:show, :create, :update, :destroy]

  def index
    listings = Listing.all
    render json: ListingSerializer.new(listings)

  end

  def show
    listing = Listing.find(params[:id])
    render json: ListingSerializer.new(listing)
  end

  def create
      @listing = Listing.create_or_find_by(listing_params)
      render json: @listing
  end

  def update
      @listing.update(listing_params)
      render json: @listing
  end

  def destroy
      @listing.delete
  end

  private

  def find_listing
      @listing = Listing.find_by(id: params[:id])
  end

  def listing_params
      params.require(:listing).permit(:name, :description, :address, :city, :zipcode, :lat, :long, :hourly_price, :monthly_price, :available_start, :available_end)
  end
end

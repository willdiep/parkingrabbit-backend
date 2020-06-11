class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :create, :update, :destroy]
  skip_before_action :authorize

  def index
    bookings = Booking.all
    render json: BookingSerializer.new(bookings)
  end

  def show
    booking = Booking.find(params[:id])
    options = {
      include: [:user, :listing]
    }
    render json: BookingSerializer.new(booking)
  end

  def create
      # byebug
      @booking = Booking.create_or_find_by(booking_params)
      render json: @booking
  end

  def update
      @booking.update(booking_params)
      render json: @booking
  end

  def destroy
      @booking.delete
  end

  private

  def find_booking
      @booking = Booking.find_by(id: params[:id])
  end

  def booking_params
      params.require(:booking).permit(:user_id, :listing_id, :start_time, :end_time, :driver_name, :driver_license, :driver_contact_number, :vehicle_license_plate, :car_make, :car_year, :billing_address, :billing_city , :billing_state , :billing_zipcode , :cardholder_name , :card_number, :card_exp_date , :card_cvv, :listing_total)
  end

end

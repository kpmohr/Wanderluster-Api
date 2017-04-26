class Api::V1::TripsController < Api::V1::BaseController
  # before_action :set_Trip, only: [:show, :update, :destroy]

  def index
    @trips = Trip.all
    respond_with @trips
  end

  def show
    @trip = Trip.find(params[:user_id])
    respond_with @trip
  end

  def create
    @trip = Trip.new(trip_params)

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { respond_with @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_with Trip.destroy(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    # @trips = Trip.all
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { respond_with @trip, notice: 'Trip was successfully updated.' }
        format.json { respond_with @trip }
      else
        format.html { respond_with :update }
        format.json { respond_with json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:tripName, :tripDescription, :user_id)
  end
end

class Api::V1::MapsController < Api::V1::BaseController
  # before_action :set_Map, only: [:show, :update, :destroy]

  def index
    @maps = Map.all
    respond_with @maps
  end

  def show
    @map = Map.find(params[:id])
    respond_with @map
  end

  def create
    @map = Map.new(map_params)

    respond_to do |format|
      if @map.save
        format.html { redirect_to @map, notice: 'Map was successfully created.' }
        format.json { respond_with @map }
      else
        format.html { render :new }
        format.json { render json: @map.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_with Map.destroy(params[:id])
  end

  def update
    @map = Map.find(params[:id])
    # @maps = Map.all
    respond_to do |format|
      if @map.update(map_params)
        format.html { respond_with @map, notice: 'Map was successfully updated.' }
        format.json { respond_with @map }
      else
        format.html { respond_with :update }
        format.json { respond_with json: @map.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def map_params
    params.require(:map).permit(:mapLink, :trip_id)
  end
end

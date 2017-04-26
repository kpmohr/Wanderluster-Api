class Api::V1::ProfilesController < Api::V1::BaseController
  # before_action :set_profile, only: [:show, :update, :destroy]

  def index
    @profiles = Profile.all
    respond_with @profiles
  end

  def show
    @profile = Profile.find(params[:id])
    respond_with @profile
  end

  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { respond_with @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    # respond_with Profile.destroy(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    # @profiles = Profile.all
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { respond_with @profile, notice: 'Profile was successfully updated.' }
        format.json { respond_with @profile }
      else
        format.html { respond_with :update }
        format.json { respond_with json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :bio, :image, :user_id)
  end
end



    # @profile = Profile.find(params[:id])
    # # @profiles = Profile.all
    # respond_to do |format|
    #   if @profile.update(profile_params)
    #     format.html { respond_with @profile, notice: 'Profile was successfully updated.' }
    #     format.json { respond_with :update, status: :ok, location: @profile }
    #   else
    #     format.html { respond_with :update }
    #     format.json { respond_with json: @profile.errors, status: :unprocessable_entity }
    #   end
    # end





  #   profile = Profile.find(params[:id])
  #   profile.update_attributes(profile_params)
  #   respond_with profile, json: profile
  #   # current_user = Profile.find(params[:user_id])
  #   # render :json => current_user.to_json()
  # end


    # profile = Profile.find(params[:id])
    # respond_to do |format|
    #   format.json do
    #     if profile.update_attributes(profile_params)
    #       respond_with profile, json: profile
    #     else
    #       respond_with :json => { :errors => profile.errors.messages }, :status => 422
    #     end
    #   end
    # end
    # profile = Profile.find(params[:id])
    # render json: profile.update_attributes(profile_params)





  # # GET /profiles
  # def index
  #   @profiles = Profile.all

  #   render json: @profiles
  # end

  # # GET /profiles/1
  # def show
  #   @profile = Profile.find(params[:id])

  #   render json: @profile
  # end

  # # POST /profiles
  # def create
  #   @profile = Profile.new(profile_params)

  #   if @profile.save
  #     render json: @profile, status: :created, location: @profile
  #   else
  #     render json: @profile.errors, status: :unprocessable_entity
  #   end
  # end

  # # PATCH/PUT /profiles/1
  # def update
  #   @profile = Profile.find(params[:id])

  #   if @profile.update(profile_params)
  #     render json: @profile
  #   else
  #     render json: @profile.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /profiles/1
  # def destroy
  #   @profile = Profile.find(params[:id])

  #   @profile.destroy
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_profile
  #     @profile = Profile.find(params[:id])
  #   end

  #   # Only allow a trusted parameter "white list" through.
  #   def profile_params
  #     params.require(:profile).permit(:id, :name, :bio, :image, :user_id)
  #   end

  # def index
  #   respond_with Profile.all
  # end

  # def create
  #   respond_with :api, :v1, Profile.create(profile_params)
  # end

  # def destroy
  #   respond_with Profile.destroy(params[:id])
  # end

  # def update
  #   profile = Profile.find(params[:id])
  #   profile.update_attributes(profile_params)
  #   respond_with profile, json: profile
  #   # current_user = Profile.find(params[:user_id])
  #   # render :json => current_user.to_json()
  # end

  # private

  # def profile_params
  #   params.require(:profile).permit(:id, :name, :bio, :image, :user_id)
  # end

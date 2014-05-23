class TerritoriesController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy
  before_action :set_territory, only: [:show, :edit, :update, :destroy]
  def create
    @territory = Territory.new(territory_params)
    if @territory.save
      redirect_to @territory
    end
  end
  def new
    @territory = Territory.new
  end

  # GET /territories/1/edit
  def edit
  end

  # POST /territories
  # POST /territories.json
  def create
    @territory = Territory.new(territory_params)

    respond_to do |format|
      if @territory.save
        format.html { redirect_to @territory, notice: 'Territory was successfully created.' }
        format.json { render action: 'show', status: :created, location: @territory }
      else
        format.html { render action: 'new' }
        format.json { render json: @territory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /territories/1
  # PATCH/PUT /territories/1.json
  def update
    respond_to do |format|
      if @territory.update(territory_params)
        format.html { redirect_to @territory, notice: 'Territory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @territory.errors, status: :unprocessable_entity }
      end
    end
  end
  def index
      @territories = Territory.all
    end
  def show
      @territory = Territory.find(params[:id])
    end
    def destroy
      @territory.destroy
      respond_to do |format|
        format.html { redirect_to territories_url }
        format.json { head :no_content }
      end
    end
  private
  def territory_params
    params.require(:territory).permit(:description, :city, :coordinates,
                                 :publisher_id)
  end
  def set_territory
    @territory = Territory.find(params[:id])
  end
end
class TipicsController < ApplicationController
  before_action :set_tipic, only: [:show, :edit, :update, :destroy]

  # GET /tipics
  # GET /tipics.json
  def index
    @tipics = Tipic.all
  end

  # GET /tipics/1
  # GET /tipics/1.json
  def show
  end

  # GET /tipics/new
  def new
    @tipic = Tipic.new
  end

  # GET /tipics/1/edit
  def edit
  end

  # POST /tipics
  # POST /tipics.json
  def create
    @tipic = Tipic.new(tipic_params)

    respond_to do |format|
      if @tipic.save
        format.html { redirect_to @tipic, notice: 'Tipic was successfully created.' }
        format.json { render :show, status: :created, location: @tipic }
      else
        format.html { render :new }
        format.json { render json: @tipic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipics/1
  # PATCH/PUT /tipics/1.json
  def update
    respond_to do |format|
      if @tipic.update(tipic_params)
        format.html { redirect_to @tipic, notice: 'Tipic was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipic }
      else
        format.html { render :edit }
        format.json { render json: @tipic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipics/1
  # DELETE /tipics/1.json
  def destroy
    @tipic.destroy
    respond_to do |format|
      format.html { redirect_to tipics_url, notice: 'Tipic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipic
      @tipic = Tipic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipic_params
      params.require(:tipic).permit(:title, :description)
    end
end

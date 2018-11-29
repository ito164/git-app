class SrticlesController < ApplicationController
  before_action :set_srticle, only: [:show, :edit, :update, :destroy]

  # GET /srticles
  # GET /srticles.json
  def index
    @srticles = Srticle.all
  end

  # GET /srticles/1
  # GET /srticles/1.json
  def show
  end

  # GET /srticles/new
  def new
    @srticle = Srticle.new
  end

  # GET /srticles/1/edit
  def edit
  end

  # POST /srticles
  # POST /srticles.json
  def create
    @srticle = Srticle.new(srticle_params)

    respond_to do |format|
      if @srticle.save
        format.html { redirect_to @srticle, notice: 'Srticle was successfully created.' }
        format.json { render :show, status: :created, location: @srticle }
      else
        format.html { render :new }
        format.json { render json: @srticle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /srticles/1
  # PATCH/PUT /srticles/1.json
  def update
    respond_to do |format|
      if @srticle.update(srticle_params)
        format.html { redirect_to @srticle, notice: 'Srticle was successfully updated.' }
        format.json { render :show, status: :ok, location: @srticle }
      else
        format.html { render :edit }
        format.json { render json: @srticle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /srticles/1
  # DELETE /srticles/1.json
  def destroy
    @srticle.destroy
    respond_to do |format|
      format.html { redirect_to srticles_url, notice: 'Srticle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_srticle
      @srticle = Srticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def srticle_params
      params.require(:srticle).permit(:title, :suthor, :body)
    end
end

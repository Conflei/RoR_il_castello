class CatalagosController < ApplicationController
  before_action :set_catalago, only: [:show, :edit, :update, :destroy]

  # GET /catalagos
  # GET /catalagos.json
  def index
    @catalagos = Catalago.all
  end

  # GET /catalagos/1
  # GET /catalagos/1.json
  def show
  end

  # GET /catalagos/new
  def new
    @catalago = Catalago.new
  end

  # GET /catalagos/1/edit
  def edit
  end

  # POST /catalagos
  # POST /catalagos.json
  def create
    @catalago = Catalago.new(catalago_params)

    respond_to do |format|
      if @catalago.save
        format.html { redirect_to @catalago, notice: 'Catalago was successfully created.' }
        format.json { render :show, status: :created, location: @catalago }
      else
        format.html { render :new }
        format.json { render json: @catalago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalagos/1
  # PATCH/PUT /catalagos/1.json
  def update
    respond_to do |format|
      if @catalago.update(catalago_params)
        format.html { redirect_to @catalago, notice: 'Catalago was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalago }
      else
        format.html { render :edit }
        format.json { render json: @catalago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalagos/1
  # DELETE /catalagos/1.json
  def destroy
    @catalago.destroy
    respond_to do |format|
      format.html { redirect_to catalagos_url, notice: 'Catalago was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    def mimetodo
        @catalagos = Catalago.all
        render 'index'
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalago
      @catalago = Catalago.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalago_params
      params.require(:catalago).permit(:vehicle, :description, :photo)
    end

end



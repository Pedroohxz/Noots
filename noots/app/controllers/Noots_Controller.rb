class NootsController < ApplicationController
  before_action :set_noot, only: [:show, :lownot, :edit, :update, :destroy]

  # GET /noots
  # GET /noots.json
  def index

    if params[:search]
      @noots = Noot.where(bimestre: params[:search])
    else
      @noots = Noot.order(bimestre: :desc)
    end
  render layout: "noots"
end

  # GET /noots/1
  # GET /noots/1.json
  def show
    
  end


  # GET /noots/new
  def new
    @noot = Noot.new
  end

  # GET /noots/1/edit
  def edit
  end

  # POST /noots
  # POST /noots.json
  def create
    @noot = Noot.new(noot_params)

    respond_to do |format|
      if @noot.save
        format.html { redirect_to @noot, notice: 'Noot was successfully created.' }
        format.json { render :show, status: :created, location: @noot }
      else
        format.html { render :new }
        format.json { render json: @noot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /noots/1
  # PATCH/PUT /noots/1.json
  def update
    respond_to do |format|
      if @noot.update(noot_params)
        format.html { redirect_to @noot, notice: 'Noot was successfully updated.' }
        format.json { render :show, status: :ok, location: @noot }
      else
        format.html { render :edit }
        format.json { render json: @noot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noots/1
  # DELETE /noots/1.json
  def destroy
    @noot.destroy
    respond_to do |format|
      format.html { redirect_to noots_url, notice: 'Noot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noot
      @noot = Noot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def noot_params
      params.require(:noot).permit(:materia, :nota_mensal, :nota_bimestral, :bimestre)
    end
end

class EmployessesController < ApplicationController
  before_action :set_employess, only: %i[ show edit update destroy ]

  # GET /employesses or /employesses.json
  def index
    @employesses = Employess.all
  end

  # GET /employesses/1 or /employesses/1.json
  def show
  end

  # GET /employesses/new
  def new
    @employess = Employess.new
  end

  # GET /employesses/1/edit
  def edit
  end

  # POST /employesses or /employesses.json
  def create
    @employess = Employess.new(employess_params)

    respond_to do |format|
      if @employess.save
        format.html { redirect_to employess_url(@employess), notice: "L'employé a été créé avec succès
." }
        format.json { render :show, status: :created, location: @employess }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employesses/1 or /employesses/1.json
  def update
    respond_to do |format|
      if @employess.update(employess_params)
        format.html { redirect_to employess_url(@employess), notice: "L'employé a été mis à jour avec succès." }
        format.json { render :show, status: :ok, location: @employess }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employesses/1 or /employesses/1.json
  def destroy
    @employess.destroy

    respond_to do |format|
      format.html { redirect_to employesses_url, notice: "L'employé a été suprrimer avec succès.
." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employess
      @employess = Employess.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employess_params
      params.require(:employess).permit(:nom, :prenom, :age, :salaire)
    end
end

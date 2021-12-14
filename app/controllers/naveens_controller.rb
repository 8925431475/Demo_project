class NaveensController < ApplicationController
  before_action :set_naveen, only: %i[ show edit update destroy ]

  # GET /naveens or /naveens.json
  def index
    @naveens = Naveen.all
  end

  # GET /naveens/1 or /naveens/1.json
  def show
  end

  # GET /naveens/new
  def new
    @naveen = Naveen.new
  end

 

 

  # GET /naveens/1/edit
  def edit
  end

  # POST /naveens or /naveens.json
  def create
    @naveen = Naveen.new(naveen_params)

    respond_to do |format|
      if @naveen.save
        format.html { redirect_to @naveen, notice: "Naveen was successfully created." }
        format.json { render :show, status: :created, location: @naveen }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @naveen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /naveens/1 or /naveens/1.json
  def update
    respond_to do |format|
      if @naveen.update(naveen_params)
        format.html { redirect_to @naveen, notice: "Naveen was successfully updated." }
        format.json { render :show, status: :ok, location: @naveen }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @naveen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /naveens/1 or /naveens/1.json
  def destroy
    @naveen.destroy
    respond_to do |format|
      format.html { redirect_to naveens_url, notice: "Naveen was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_naveen
      @naveen = Naveen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def naveen_params
      params.require(:naveen).permit(:name1,:phone)
    end
end

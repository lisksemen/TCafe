class BarmenController < ApplicationController
  before_action :set_barman, only: %i[ show edit update destroy ]

  # GET /barmen or /barmen.json
  def index
    @barmen = Barman.all
  end

  # GET /barmen/1 or /barmen/1.json
  def show
  end

  # GET /barmen/new
  def new
    @barman = Barman.new
  end

  # GET /barmen/1/edit
  def edit
  end

  # POST /barmen or /barmen.json
  def create
    @barman = Barman.new(barman_params)

    respond_to do |format|
      if @barman.save
        format.html { redirect_to barman_url(@barman), notice: "Barman was successfully created." }
        format.json { render :show, status: :created, location: @barman }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @barman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barmen/1 or /barmen/1.json
  def update
    respond_to do |format|
      if @barman.update(barman_params)
        format.html { redirect_to barman_url(@barman), notice: "Barman was successfully updated." }
        format.json { render :show, status: :ok, location: @barman }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @barman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barmen/1 or /barmen/1.json
  def destroy
    @barman.destroy

    respond_to do |format|
      format.html { redirect_to barmen_url, notice: "Barman was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barman
      @barman = Barman.find(params.permit(:id)[:id].to_i)
    end

    # Only allow a list of trusted parameters through.
    def barman_params
      params.require(:barman).permit(:name, :salary, :age)
    end
end

class CashboxesController < ApplicationController
  before_action :set_cashbox, only: %i[ show edit update destroy ]

  # GET /cashboxes or /cashboxes.json
  def index
    @cashboxes = Cashbox.all
  end

  # GET /cashboxes/1 or /cashboxes/1.json
  def show
  end

  # GET /cashboxes/new
  def new
    @cashbox = Cashbox.new
  end

  # GET /cashboxes/1/edit
  def edit
  end

  # POST /cashboxes or /cashboxes.json
  def create
    @cashbox = Cashbox.new(cashbox_params)

    respond_to do |format|
      if @cashbox.save
        format.html { redirect_to cashbox_url(@cashbox), notice: "Cashbox was successfully created." }
        format.json { render :show, status: :created, location: @cashbox }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cashbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cashboxes/1 or /cashboxes/1.json
  def update
    respond_to do |format|
      if @cashbox.update(cashbox_params)
        format.html { redirect_to cashbox_url(@cashbox), notice: "Cashbox was successfully updated." }
        format.json { render :show, status: :ok, location: @cashbox }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cashbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashboxes/1 or /cashboxes/1.json
  def destroy
    @cashbox.destroy

    respond_to do |format|
      format.html { redirect_to cashboxes_url, notice: "Cashbox was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashbox
      @cashbox = Cashbox.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cashbox_params
      params.require(:cashbox).permit(:money)
    end
end

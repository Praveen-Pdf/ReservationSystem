class TimeslotsController < ApplicationController
  before_action :set_timeslot, only: %i[ show edit update destroy ]

  # GET /timeslots or /timeslots.json
  def index
    @table = Table.find(params[:table_id])
    @timeslots = @table.timeslots
  end

  # GET /timeslots/1 or /timeslots/1.json
  def show
    @table = Table.find(params[:table_id])
  end

  # GET /timeslots/new
  def new
    @table = Table.find(params[:table_id])
    @timeslot = @table.timeslots.build
  end

  # GET /timeslots/1/edit
  def edit
    @table = Table.find(params[:table_id])
    @timeslot = @table.timeslots.find(params[:id])
  end

  # POST /timeslots or /timeslots.json
  def create
    @table = Table.find(params[:table_id])
    @timeslot = @table.timeslots.build(timeslot_params)

    respond_to do |format|
      if @timeslot.save
        format.html { redirect_to table_timeslots_path(@table), notice: "Timeslot was successfully created." }
        format.json { render :show, status: :created, location: @timeslot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @timeslot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timeslots/1 or /timeslots/1.json
  def update
    respond_to do |format|
      if @timeslot.update(timeslot_params)
        format.html { redirect_to table_timeslots_path, notice: "Timeslot was successfully updated." }
        format.json { render :show, status: :ok, location: @timeslot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @timeslot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timeslots/1 or /timeslots/1.json
  def destroy
    @timeslot.destroy
    respond_to do |format|
      format.html { redirect_to table_timeslots_path, notice: "Timeslot was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timeslot
      @timeslot = Timeslot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def timeslot_params
      params.require(:timeslot).permit(:table_id, :name, :date, :start, :end, :status)
    end
end

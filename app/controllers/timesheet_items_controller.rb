class TimesheetItemsController < ApplicationController
  before_action :set_timesheet_item, only: [:show, :edit, :update, :destroy]

  # GET /timesheet_items
  # GET /timesheet_items.json
  def index
    @timesheet_items = TimesheetItem.all
  end

  # GET /timesheet_items/1
  # GET /timesheet_items/1.json
  def show
  end

  # GET /timesheet_items/new
  def new
    @timesheet_item = TimesheetItem.new
  end

  # GET /timesheet_items/1/edit
  def edit
  end

  # POST /timesheet_items
  # POST /timesheet_items.json
  def create
    @timesheet_item = TimesheetItem.new(timesheet_item_params)

    respond_to do |format|
      if @timesheet_item.save
        format.html { redirect_to @timesheet_item, notice: 'Timesheet item was successfully created.' }
        format.json { render :show, status: :created, location: @timesheet_item }
      else
        format.html { render :new }
        format.json { render json: @timesheet_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timesheet_items/1
  # PATCH/PUT /timesheet_items/1.json
  def update
    respond_to do |format|
      if @timesheet_item.update(timesheet_item_params)
        format.html { redirect_to @timesheet_item, notice: 'Timesheet item was successfully updated.' }
        format.json { render :show, status: :ok, location: @timesheet_item }
      else
        format.html { render :edit }
        format.json { render json: @timesheet_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timesheet_items/1
  # DELETE /timesheet_items/1.json
  def destroy
    @timesheet_item.destroy
    respond_to do |format|
      format.html { redirect_to timesheet_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timesheet_item
      @timesheet_item = TimesheetItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def timesheet_item_params
      params.require(:timesheet_item).permit(:date, :hours, :notes, :billed)
    end
end

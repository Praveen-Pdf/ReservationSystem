class TablesController < ApplicationController
  before_action :set_table, only: %i[ show edit update destroy ]


  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @tables = @restaurant.tables
  end


  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
  end


  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @table = @restaurant.tables.build
  end


  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
    @table = @restaurant.tables.find(params[:id])
  end


  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @table = @restaurant.tables.build(table_params)
    
    #Extras
    @table.restaurant_name = @restaurant.name
    @table.restaurant_mail = @restaurant.email

    respond_to do |format|
      if @table.save
        format.html { redirect_to restaurant_tables_path(@restaurant), notice: "Table was successfully created." }
        format.json { render :show, status: :created, location: @table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @table.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @table.update(table_params)
        format.html { redirect_to restaurant_tables_path(), notice: "Table was successfully updated." }
        format.json { render :show, status: :ok, location: @table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @table.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @table.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_tables_path(), notice: "Table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_table
      @table = Table.find(params[:id])
    end

    def table_params
      params.require(:table).permit(:restaurant_id,:restaurant_name,:restaurant_mail, :table_name, :capacity)
    end
end

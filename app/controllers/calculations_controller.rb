class CalculationsController < ApplicationController
  def index
    @calculations = Calculation.all
  end
  
  def show
    @calculation = Calculation.find(params[:id])
  end
  
  def new
    @calculation = Calculation.new
  end
  
  def create
    @calculation = Calculation.new(params[:calculation])
    if @calculation.save
      flash[:notice] = "Successfully created calculation."
      redirect_to @calculation
    else
      render :action => 'new'
    end
  end
  
  def edit
    @calculation = Calculation.find(params[:id])
  end
  
  def update
    @calculation = Calculation.find(params[:id])
    if @calculation.update_attributes(params[:calculation])
      flash[:notice] = "Successfully updated calculation."
      redirect_to @calculation
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @calculation = Calculation.find(params[:id])
    @calculation.destroy
    flash[:notice] = "Successfully destroyed calculation."
    redirect_to calculations_url
  end
end

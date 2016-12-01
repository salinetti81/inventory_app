class WorkOrdersController < ApplicationController 
  before_action :set_work_order, only: [:show, :edit, :update, :destroy]
  
  def index
    @work_order = WorkOrder.all
  end

  def create
    @work_order = WorkOrder.new(work_order_params[:work_order])
    
    if @work_order.save
      redirect_to @work_order
    else 
      render :action => new
    end
  end

  def new
    @work_order = WorkOrder.new
  end

  def edit
    @work_order = WorkOrder.find(params[:id])
  end

  def show
    @work_order = WorkOrder.find(params[:id])
  end

  def update
    @work_order = WorkOrder.find(params[:id])
    @work_order.update_attributes(work_order)
    redirect_to work_orders.path
  end

  def destroy
    @work_order = WorkOrder.find(params[:id])
    @work_order.destroy
    redirect_to work_orders_path
  end


end
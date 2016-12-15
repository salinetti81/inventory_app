class WorkOrdersController < ApplicationController 
  before_action :set_work_order, only: [:show, :edit, :update, :destroy]

  def index
    @work_order = WorkOrder.all
    if params[:search]
      @work_orders = WorkOrder.search(params[:search])
    else
      @work_orders = WorkOrder.all
    end
  end

  def show
    @work_order = WorkOrder.find(params[:id])
  end

  def new
    @work_order = WorkOrder.new
  end

  def edit
    @work_order = WorkOrder.find(params[:id])
  end

  def create
    @work_order = WorkOrder.new(work_order_params)

    if @work_order.room_name
      @work_order.room_name = @work_order.room_name
    end

    if @work_order.save
      redirect_to @work_order
    else 
      render :action => :new
    end
  end

  def update
    @work_order = WorkOrder.find(params[:id])

    if @work_order.update(work_order_params)
      redirect_to @work_order
    else
      render :action => :edit
    end
  end

  def destroy
    @work_order = WorkOrder.find(params[:id])
    @work_order.destroy
    redirect_to work_orders_path
  end

 private

  def set_work_order
    @work_order = WorkOrder.find(params[:id])
  end

  def work_order_params
    params.require(:work_order).permit(:room_name, :number, :date, :employee_id, :employee_name, :notes)
  end

end
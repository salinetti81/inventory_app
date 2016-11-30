class WorkOrdersController <ApplicationController 

  def index
    @work_orders = WorkOrders.all
  end

  def create
    @work_order = WorkOrder.create(work_orders_params)
    redirect_to work_orders_path
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
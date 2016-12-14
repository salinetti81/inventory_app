class EmployeesController <ApplicationController 
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  
  def index
    @employee = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end


  def create
  end

  def new
  end

  def edit
  end

 
  def update
  end

  def destroy
  end


end
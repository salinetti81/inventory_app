class EmployeesController <ApplicationController 
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  
  def index
    @employee = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.employee_id
      @employee.employee_id = @employee.employee_id
    end

    if @employee.save
      redirect_to @employee
    else
      render :action => :new
    end
  end
 
  def update
    @employee = Employee.find(params[:id])

    if @employee.update(employee_params)
      redirect_to @employee
    else
      render :action => :edit
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path
  end

  private


    def set_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :employee_id)
  end


end
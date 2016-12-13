class EquipmentController <ApplicationController 

  def index
    @equipment = Equipment.all
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def new
    @equipment = Equipment.new
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

  def create
    @equipment = Equipment.new(equipment_params)

    if @equipment.id_number
      @equipment.id_number = @equipment.id_number
    end

    if equipment.save
      redirect_to @equipment
    else 
      render :action => :new
    end
  end

  def update
    @equipment = Equipment.find(params[:id])
    @equipment.update_attributes(equipment)
    redirect_to equipment.path

    if @equipment.update(equipment_params)
      redirect_to @equipment
    else
      render :action => :edit
    end
  end

  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy
    redirect_to equipment_path
  end


end
class SpecsController < ApplicationController
  before_filter :authorize
  before_filter :admin_check, only: [:new, :update, :destroy]
  # GET /specs
  def index
    if @current_group && @current_group.admin_flag 
      @specs = Spec.all
    else
      @specs = Spec.where("user_id = ?", @current_user.id)
    end
    respond_to :html
  end

  # GET /users/1
  def show
    @spec = Spec.find(params[:id]) 
    respond_to :html
  end

  def new
    @spec = Spec.new
    @order = Order.find_by_id(params[:order_id])
    @spec.order_id = @order.id
    
    if @order.user_id == 0
      @spec.number = 0
      @spec.company_name = @order.name
      @spec.unp_id = 0
    else
      @spec_user = User.find_by_id(@order.user_id) 
      if (spec_nums = Spec.where("user_id = ?", @spec_user.id).order("created_at ASC")).size != 0
        @spec.number = spec_nums.last.number + 1
      else
        @spec.number = 1
      end
      @spec.company_name = @spec_user.company_name
      @spec.unp_id = Unp.find_by_unp(@spec_user.unp).id
      @spec.user_id = @order.user_id
      
    end
    @spec.date = Time.now.in_time_zone('Minsk').strftime("%d.%m.%Y")
    @spec.pay_type = "Оплачено в кассу"
    respond_to :html
  end

  def create
    @spec = Spec.new(params[:spec])
    respond_to do |format|
      if @spec.save
        @order = Order.find_by_id(@spec.order_id)
        @order.status = "Обработан"
        @order.save
        format.html { redirect_to specs_path, notice: "Спецификация сохранена" }
      else
        format.html { redirect_to new_spec_path, notice: "Ошибка сохранения" }
      end
    end
  end
  #прикрутить или нет ?
  def update
    @spec = Spec.find(params[:id])
    respond_to do |format|
      if @spec.update_attributes(params[:spec])
        format.html { redirect_to specs_path, notice: 'Спецификация успешно сохранена' }
      else
        format.html { render action: "update" }
      end
    end
  end

  def destroy
    @spec = Spec.find(params[:id])
    @spec.destroy

    respond_to do |format|
      format.html { redirect_to specs_url }
    end
  end
end

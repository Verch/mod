﻿class SpecsController < ApplicationController
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
      @spec.company_name = @order.name
      @spec.unp_id = 0
    else
      @spec_user = User.find_by_id(@order.user_id) 
      @spec.company_name = @spec_user.company_name
      @spec.unp_id = Unp.find_by_unp(@spec_user.unp).id
      @spec.user_id = @order.user_id
      
    end
    if (spec_nums = Spec.where("user_id > ?", 0).order("created_at ASC")).size != 0
        @spec.number = spec_nums.last.number + 1
      else
        @spec.number = 1
      end
    @spec.date = Time.now.in_time_zone('Minsk').strftime("%d.%m.%Y")
    @spec.pay_type = "Оплачено в кассу"
    respond_to :html
  end

  def create
    @spec = Spec.new(params[:spec])

    unless @spec.xls_tab.presence
      @spec.xls_tab = nil
      @spec.pay_type = "Оплачено в кассу "
    else
      @spec.pay_type = "Выставлена спецификация"
    end

    respond_to do |format|
      if @spec.save
        Notifier.order_processed(@spec).deliver
        @order = Order.find_by_id(@spec.order_id)
        @order.status = "Обработан"
        @order.save
        format.html { redirect_to orders_path, notice: "Спецификация сохранена" }
      else
        format.html { redirect_to orders_path, notice: "Ошибка сохранения! Возможно по этому заказу уже выставлена спецификация или Вы пытаетесь загрузить файл неверного формата" }
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
    @order = Order.find_by_id(@spec.order_id)
    if @order != nil
      @order.status = "Ожидает"
      @order.save
    end
    @spec.destroy

    respond_to do |format|
      format.html { redirect_to orders_url }
    end
  end
end

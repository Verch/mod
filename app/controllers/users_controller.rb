class UsersController < ApplicationController
  # GET /users
  before_filter :authorize, :admin_check, only: [:index, :show, :edit, :update, :destroy]
  def index
    case params[:temp_id]
      when "1"
        @users = User.where("reg_confirm_admin = ?", true)
      when "2"
        @users = User.where("reg_confirm_admin = ?", false)
      else
        @users = User.where("reg_confirm_admin = ?", true)
    end    
    respond_to :html # index.html.erb
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
    @discounts = Discount.all
    @unp = Unp.find_by_unp(@user.unp)
    @user_discount = 0
    @discounts.each do |disc|
      if (disc.count < @unp.total_amount_product_integer.to_i)
        @user_discount = disc.value
      end
    end
    
    respond_to :html # show.html.erb
  end

  # GET /users/new
  def new
    @user = User.new

    respond_to :html # new.html.erb
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    @user_groups = UserGroup.all
    @current_user_group = UserGroup.find_by_id(@user.user_group_id) 
  end

  # POST /users
  def create
    @user = User.new(params[:user])
    
      @user.last_in = DateTime.now
      if params[:mail_duplicate]
        @user.mailing_address = @user.juridical_address
      end
      respond_to do |format|
        if @user.save
          if unp = Unp.find_by_unp(@user.unp)
            if @specs = Spec.find_all_by_unp_id(unp.id)
              @specs.each do |spec|
                spec.user_id = @user.id
              end
            end
          else
            @unp = Unp.new
            @unp.unp = @user.unp
            @unp.save
          end
          format.html { redirect_to login_path, notice: 'Свяжитесь с администратором для подтверждения регистрации.' }
        else
          format.html { render action: "new" }
        end
    
    end
  end

  # PUT /users/1
  def update
    @user = User.find(params[:id])
    @user_groups = UserGroup.all
    @current_user_group = UserGroup.find_by_id(@user.user_group_id) 
    temp_user = @user
    respond_to do |format|
      if @user.update_attributes(params[:user])
        if params[:mail_duplicate]
          @user.mailing_address = @user.juridical_address
          unless @user.save
            format.html { render action: "edit", notice: 'Ошибка сохранения данных пользователя.' }
          end
        end
        unless @user.unp == temp_user.unp
          if unp = Unp.find_by_unp(@user.unp)
            if @specs = Spec.find_all_by_unp_id(unp.id)
              @specs.each do |spec|
                spec.user_id = @user.id
              end
            end
          else
            @unp = Unp.new
            @unp.unp = @user.unp
            @unp.save
          end
        end
        format.html { redirect_to @user, notice: 'Данные пользователя успешно изменены.' }
      else
        format.html { render action: "edit", notice: 'Ошибка сохранения данных пользователя.' }
      end
    end
  end

  # DELETE /users/1
  def destroy
    @user = User.find(params[:id])
    @specs = Spec.find_all_by_user_id(@user.id)
    @specs.each do |spec|
      @spec.user_id = nil
    end
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
    end
  end
end

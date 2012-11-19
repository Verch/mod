class UsersController < ApplicationController
  # GET /users
  before_filter :authorize, :admin_check, only: [:index, :show, :edit, :update, :destroy]
  def index
    if params[:temp_id] == "1"
      @users = User.where("reg_confirm_admin = ?", true)
    else
      if params[:temp_id] == "2"
        @users = User.where("reg_confirm_admin = ?", false)
      else
        @users = User.where("reg_confirm_admin = ?", true)
      end
    end    
    respond_to :html # index.html.erb
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
    
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
        unless Unp.find_by_unp(@user.unp)
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

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'Данные пользователе успешно изменены.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /users/1
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
    end
  end
end

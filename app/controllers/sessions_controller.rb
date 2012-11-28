class SessionsController < ApplicationController
  skip_before_filter :authorize, only: [:new, :create]
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
  	if user and user.authenticate(params[:password])
      if UserGroup.find_by_id(user.user_group_id).admin_flag
        user.last_in = DateTime.now
        user.save
        session[:user_id] = user.id
        redirect_to user
      else
    		if user.reg_confirm_admin
          user.last_in = DateTime.now 
          user.save
          session[:user_id] = user.id
          if params[:controller] == "sessions"
            redirect_to user, notice: "Добро пожаловать!"
          else
            redirect_to :back, notice: "Добро пожаловать!"
          end
        else
          redirect_to "/login", notice: "Регистрация не подтверждена Администратором"	
        end
      end  
    else
      redirect_to '/login', notice: "Неверный e-mail или пароль"
    end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to "/"
  end
end

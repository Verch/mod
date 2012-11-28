class ApplicationController < ActionController::Base
	protect_from_forgery
	before_filter :curr
	before_filter :test
	protected
		def test
			@test = params[:action]
		end
		def authorize
			unless User.find_by_id(session[:user_id])
				render template: 'sessions/new'
			end
		end

		def curr
			if User.find_by_id(session[:user_id])
				@current_user = User.find_by_id(session[:user_id])
				@current_group = UserGroup.find_by_id(@current_user.user_group_id)
			else
				@current_user = nil
				@current_group = nil
			end
			@cart = current_cart
		end

		def admin_check
			unless @current_user.id == params[:id].to_i
				unless @current_group.admin_flag
					redirect_to root_path, notice: "Нет прав доступа"
				end
			end
		end

	private
		def current_cart
			Cart.find(session[:cart_id])
		rescue ActiveRecord::RecordNotFound
			cart = Cart.create
			session[:cart_id] = cart.id
			cart
		end
end

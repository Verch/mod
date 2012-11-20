class ToolsController < ApplicationController
  before_filter :authorize, :admin_check
  
  def edit
  	@tool = Tool.first

  	respond_to :html
  end



  # PUT
  def update
  	@tool = Tool.first

  	respond_to do |format|
      if @tool.update_attributes(params[:tool])
  	  	format.html { redirect_to user_path, notice: "Новость успешно заменена" }
  	  else
  	  	format.html { render action: "update", notice: "Что-то пошло не так... Попробуйте еще раз" }
  	  end
  	end
  end
end

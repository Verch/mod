class PagesController < ApplicationController
  before_filter :authorize, only: :warehouse
  def home
    @title = "Трикотаж в Минске оптом: футболки, бейсболки, толстовки, рубашки поло | Мужской, женский, детский трикотаж"
    @news = Tool.first.news
  end

  def warehouse
    if !@current_group.view_sklad_flag
      redirect_to root_path, notice: "У вас нет прав доступа"
    elsif @current_group.admin_flag
        respond_to :html
        @products = Product.all
    elsif !@current_group.admin_flag and @current_group.view_sklad_flag
        redirect_to products_path
    end
  end

  def convertsizes
  end

  def scheme
  end

  def about
    @title = "О компании Модерн Импорт"
  end

  def contact
  end
end

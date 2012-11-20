class PagesController < ApplicationController
  def home
    @news = Tool.first.news
  end

  def convertsizes
  end

  def scheme
  end

  def about
  end

  def contact
  end
end

class AppController < ApplicationController
  def home
    @featured = Article.find_by featured: true 
    @articles = Article.all.where(featured: false)
  end

  def show
    @article = Article.find(params[:id])
  end

  def contact
  end
  
end

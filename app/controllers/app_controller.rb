class AppController < ApplicationController
  def home
    @featured = Article.all.where(featured: true)
    @articles = Article.all.where(featured: false)
  end

  def show
    @article = Article.find(params[:id])
    if Article.where(id: params[:id].to_i + 1).exists?
      @article_after = {title: Article.find(params[:id].to_i + 1).title, url: "/articles/" + Article.find(params[:id].to_i + 1).id.to_s}
    else
      @article_after = nil
    end
    render "articles/show"
  end

  
end

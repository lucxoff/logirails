class ArticlesController < ApplicationController
    
    before_action :authenticate_user!

    def new
        @article = Article.new(featured: false)
    end

    def create
        @article = Article.new(article_params)
        @article.featured = false


        if @article.save
            redirect_to :dashboard
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @article = Article.find(params[:id])
    end
    
    def update
        @article = Article.find(params[:id])
        @article.featured = false

        if @article.update(article_params)
            redirect_to :dashboard
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
    
        redirect_to :dashboard, status: :see_other
    end

    private
        def article_params
            params.require(:article).permit(:title, :body, :shortdesc, :featured, :image_url, tag_ids: [])
        end

end

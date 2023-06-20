class TagController < ApplicationController

    def show
        @articles = Article.all.where(tag: params[:id])
    end

end

class DashboardController < ApplicationController

  before_action :authenticate_user!

  def index

    @articles = Article.all
    @tags = Tag.all

  end
end

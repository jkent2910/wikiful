class WelcomeController < ApplicationController
  def index 
    @articles = Article.order(updated_at: :desc).limit(5)
  end
  
  def show
    @article = Article.find(params[:id])
  end

end

class ArticlesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  def destroy
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end

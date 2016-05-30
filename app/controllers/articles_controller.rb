class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user

    if @article.save
      redirect_to @article,
        notice: t("article_was_successfully_created")
    else
      render :new
    end
  end

  def article_params
    params.require(:article).permit(
      :title,
      :body
    )
  end
end

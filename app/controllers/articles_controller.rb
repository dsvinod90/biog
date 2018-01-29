class ArticlesController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]


  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = current_admin.articles.build(article_params)
    if @article.save
      flash[:success] = 'Article created successfully'
      redirect_to @article
    else
      flash.now[:danger] = 'Article could not be created. Please try again.'
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:success] = 'Article updated successfully'
      redirect_to @article
    else
      flash.now[:danger] = 'Article could not be updated. Please try again.'
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      flash[:danger] = 'Article deleted'
      redirect_to articles_path
    else
      render 'show'
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end

class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit, :update, :destroy]

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
    if @article.save
      flash[:notice] = "Article was created successfully."
      redirect_to article_path(@article)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
   if @article.update(article_params)
    flash[:notice] = "Article was edited successfully."
    redirect_to @article
   else
    render :edit, status: :unprocessable_entity
   end
  end

  def destroy
    @article.destroy
    redirect_to root_path , status: :see_other
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description) 
  end

end

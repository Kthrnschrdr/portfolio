class ArticlesController < ApplicationController
  skip_before_filter :authorize, :only => [:index, :show]
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(params[:article])

    if @article.save
      redirect_to articles_path, :notice => "Article saved!"
    else
      render "new"
    end
  end
  
  def show
     @article = Article.find(params[:id])
     @length = @article.relative_length(@article.body)
     @excerpt = @article.excerpt(@article.body)
     @like = Like.new({ip_address: request.remote_ip, article_id: params[:id]})
     @likes = Like.where(article_id: @article.id)
     @likes = @article.likes
     @like = Like.create({article_id: @article.id, ip_address: request.remote_ip})
  end
  
  def edit
     @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to articles_path, :notice => "Article updated!"
    else
      render "edit"
    end
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    
    redirect_to articles_path

end

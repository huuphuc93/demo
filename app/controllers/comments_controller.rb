class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def show
    @comment = Comment.find params[:id]
  end

  def edit
    @article = Article.find params[:article_id]
    @comment = Comment.find params[:id]
  end

  def create
    @comment = Comment.new comment_params
    if @comment.save
      redirect_to @comment.article, notice: "Successfully created comment."
    else
      render :new
    end
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes comment_params
      redirect_to @comment.article, notice: "Article has been updated."
    else
      render "edit"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:article_id, :name, :content)
  end
end

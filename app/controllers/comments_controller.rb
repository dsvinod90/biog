class CommentsController < ApplicationController
	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(comment_params)
    if @comment.save
      flash[:success] = "#{@comment.name} has successfully commented on this article"
      redirect_to article_path(@article)
    end
	end

	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])
    if @comment.destroy
      flash[:danger] = "#{@comment.name}'s comment has been deleted"
      redirect_to article_path(@article)
    end
	end

	private

	def comment_params
		params.require(:comment).permit(:name, :email, :comment)
	end
end

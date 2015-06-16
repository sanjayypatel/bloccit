class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comments = @post.comments
    @new_comment = Comment.new
    
    @comment = current_user.comments.build(comments_params)
    @comment.post = @post
    authorize @comment
    
    if @comment.save
      flash[:notice] = "Comment created successfully."
    else
      flash[:error] = "There was an error saving comment. Please try again."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @topic = @post.topic
    @comment = Comment.find(params[:id])
    authorize @comment
    if @comment.destroy
      flash[:notice] = "Comment deleted successfully."
    else
      flash[:error] = "There was an error deleting comment."
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:body)
  end
end

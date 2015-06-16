class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @topic = @post.topic
    @comment = current_user.comments.build(comments_params)
    authorize @comment
    @comment.post = @post
    if @comment.save
      flash[:notice] = "Comment created successfully."
      redirect_to [@topic, @post]
    else
      flash[:error] = "There was an error saving comment. Please try again."
      redirect_to [@topic, @post]
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

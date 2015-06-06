class CommentsController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.build(comments_params)
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
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    authorize @comment
    if @comment.destroy
      flash[:notice] = "Comment deleted successfully."
      redirect_to [@topic, @post]
    else
      flash[:error] = "There was an error deleting comment."
      redirect_to [@topic, @post]
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:body)
  end
end

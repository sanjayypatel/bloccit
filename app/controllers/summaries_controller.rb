class SummariesController < ApplicationController

  def new
    @topic = Topic.find(params[:topic_id])
    @post=Post.find(params[:post_id])
    authorize @post
    @summary= Summary.new
  end

  def create
    @topic = Topic.find(params[:topic_id])
    @post=Post.find(params[:post_id])
    authorize @post
    @summary= @post.build_summary(params.require(:summary).permit(:body))
    if @summary.save
      flash[:notice] = "Summary was saved."
      redirect_to [@topic, @post]
    else
      flash[:error] = "There was an error saving summary. Please try again."
      render :new
    end
  end

  def edit
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @summary = @post.summary
    authorize @post
  end

  def update
    @topic = Topic.find(params[:topic_id])
    @post=Post.find(params[:post_id])
    @summary = @post.summary
    authorize @post
    if @summary.update_attributes(params.require(:summary).permit(:body))
      flash[:notice] = "Summary was updated."
      redirect_to [@topic, @post]
    else
      flash[:error] = "There was an error saving the summary. Please try again."
      render :edit
    end
  end

end

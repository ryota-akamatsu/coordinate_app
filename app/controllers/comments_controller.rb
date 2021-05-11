class CommentsController < ApplicationController
  
  
  def create
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:post_id])
    @comments = @post.comments

    if @comment.save
      redirect_to post_path(@post.id) 
    else
      
    
      render  "/posts/show" 
  end
end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end

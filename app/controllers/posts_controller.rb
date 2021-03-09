class PostsController < ApplicationController
  def index
    @post = Post.all.order("created_at DESC")
    @user = User.new
    
    end
   def new
     @post = Post.new
   end
   def create
     @post = Post.new(posts_params)
    
     if @post.save
       redirect_to root_path
     else
       render :new
     end
   end
   private
   def posts_params
     params.require(:post).permit(:outer,:tops,:pants,:shoes,:hat,:accessory,:season_id,:image).merge(user_id: current_user.id)
   end
end

class PostsController < ApplicationController
  def index
    @post = Post.all
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
     params.require(:post).permit(:outer,:tops,:pants,:shoes,:hat,:accessory,:season_id,images:[]).merge(user_id: current_user.id)
   end
end

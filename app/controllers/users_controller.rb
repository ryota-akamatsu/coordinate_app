class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post = Post.new
    @posts = @user.Posts
  end
  
end

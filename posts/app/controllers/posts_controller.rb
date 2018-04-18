class PostsController < ApplicationController
 def index
 @post= Post.all
end
def show
 @post= Post.find(params[:id])
end
def new 
  @post = Post.new
 end
def edit
 @post = Post.find(params[:id])
  end
def create
   @post = Post.new(posts_param)
   @post.user_id =1
   if @post.save
       redirect_to @post
   else 
       render 'new'
   end
 end
def update 
  @post= Post.find(params[:id])
  if @post.update(posts_p)
      redirect_to @post
   else 
     render 'edit'
   end
end
  def destroy
   @post = Post.find(params[:id])
   @post.destroy
   redirect_to posts_path
  end 

private
 def posts_param
  params.require(:posts).permit(:body,:user_id)
 end
def posts_p
   params.require(:post).permit(:body,:user_id)
 end
end

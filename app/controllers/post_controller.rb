class PostController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    @post = Post.new
  end
  def create
  @post= Post.new (params.require(:post).permit(:name, :image, :comment))
  if @post.save
    flash[:notice] = "作品を登録しました"
  else
    render "new",status: :unprocessable_entity
  end
end

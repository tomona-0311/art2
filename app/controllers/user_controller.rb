class UserController < ApplicationController
 
def new
@user = User.new(params.require(:user).permit(:name))
if @user.save
  flash[:notice] = "ユーザーの登録をする"
  redirect_to :users
else
  render"new"
end
end
end

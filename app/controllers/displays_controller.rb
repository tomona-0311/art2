class DisplaysController < ApplicationController
  #before_action :authenticate_user!

  def index
    @displays = Display.all
    @user = current_user
    binding.pry
  end

  def new
    @display = Display.new
    @user = current_user
  end

  def create
  #display.image.attach(display_params[:image])
    @display = Display.create!(display_params)
    if @display.save
      puts "保存に成功しました"
          flash[:notion] = "作品登録完了"
      redirect_to @display # ＠displayとすることでDBから取得したデータを指定すると、そのコントローラーのshowアクションに該当するページに遷移する。「redirect_to パラメータ」
   else
    puts "保存に失敗しました"
     render "new"
   end
  end
end

def show


  @display = Display.find(params[:id])
  @user = current_user
end

private
def display_params
params.require(:display).permit(:image,:introduction,:display_name)
end

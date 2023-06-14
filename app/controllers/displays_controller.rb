class DisplaysController < ApplicationController
  #before_action :authenticate_user!

  def index
    @displays = Display.all
  end

  def new
    @display = Display.new
  end

  def create
  #display.image.attach(display_params[:image])

    @display = Display.create(display_params)

    if @display.save
      puts "保存に成功しました"
          flash[:notion] = "作品登録完了"
      redirect_to :displays# ＠displayとすることでDBから取得したデータを指定すると、そのコントローラーのshowアクションに該当するページに遷移する。「redirect_to パラメータ」
   else
    puts "保存に失敗しました"
     render "new"
   end
  end
end
private
def display_params
params.require(:display).permit(:image,:introduction,:display_name)
end

class DisplaysController < ApplicationController
  #before_action :authenticate_user!

  def index
    @display = Display.all

    @user = current_user
    @display.image.attach(params[:image])
  end

  def new
    @user = current_user
    @display = Display.new
  end

  def create
    @user = current_user
    @display = Display.create!(display_params)

    if @display.save

      redirect_to :displays# ＠displayとすることでDBから取得したデータを指定すると、そのコントローラーのshowアクションに該当するページに遷移する。「redirect_to パラメータ」
   else
     render "new"
   end

  end

   private

   def display_params
    params.require(:display).permit(:display_name, :introduction, :image)
  end
end


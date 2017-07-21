class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @authored = Game.where(:authors).include(params[:id])
  end
end

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    # I have nfc how the runs/campaigns/games/sessions thing works so I'll leave that to someone who designed the database to connect some dots here, ahaha.
  end
end

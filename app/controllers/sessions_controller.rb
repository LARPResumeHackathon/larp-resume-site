class SessionsController < ApplicationController
  def show
    @session = Session.find(params[:id])
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(sessions_params)
    if @session.save!
      flash[:success] = "Your game session was added."
      redirect_to session_path(@session)
    else
      flash[:error] = "There was an error adding your game session."
      redirect_to new_session_path
    end
  end

  def edit
    @session = Session.find(params[:id])
  end

  def update
    @session = Session.find(params[:id])
    if @session.update_attributes!(sessions_params)
      flash[:success] = "Your game session was successfully updated."
      redirect_to session_path(@session)
    else
      flash[:error] = "There was an error updating your game session."
      redirect_to edit_session_path(@session)
    end
  end

  def destroy
    
  end

  private

  def sessions_params
    params.require(:session).permit(:title, :description, :website, :campaign_id, :start_datetime, :end_datetime, :location, :private)
end

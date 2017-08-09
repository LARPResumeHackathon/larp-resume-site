class CharactersController < ApplicationController
  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(characters_params)
    if @character.save!
      flash[:success] = "Your character was created."
      redirect_to character_path(@character) and return
    else
      flash[:error] = "There was an error adding your character."
      redirect_to new_character_path and return
    end
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    if @character.update_attributes!(characters_params)
      flash[:success] = "Your character was updated."
      redirect_to character_path(@character) and return
    else
      flash[:error] = "There was an error updating your character."
      redirect_to edit_character_path(@character) and return
    end
  end

  def destroy
    @character = Character.destroy(params[:id])
    flash[:success] = "Your character was removed."
    redirect_to user_path(current_user) and return
  end

  private

  def characters_params
    params.require(:character).permit(:name, :game)
  end
end

class CampaignsController < ApplicationController
	before_action :set_campaign, only: [:show, :edit, :update]
  
  def index
    @campaign = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaigns_params)
    if @campaign.save!
      flash[:success] = "The campaign was successfully added."
      redirect_to @campaign and return
    else
      flash[:error] = "There was an error adding the campaign."
      redirect_to new_campaign_path and return
    end
  end

  def edit
    @campaign = Campaign.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:id])
    if @campaign.update_attributes!(params[:id])
      flash[:success] = "The campaign was successfully updated."
      redirect_to @campaign
    else
      flash[:error] = "There was an error updating the campaign."
      redirect_to edit_campaign_path(@campaign) and return
    end
  end

  def destroy
    @campaign = Campaign.destroy(params[:id])
    flash[:success] = "The campaign was deleted."
    redirect_to campaigns_path and return
  end
  
  def set_campaign
		@campaign = Campaign.find(params[:id])
	end

  private

  def campaigns_params
    params.require(:campaign).permit(:name, :description, :organization)
  end
end

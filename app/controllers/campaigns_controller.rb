class CampaignsController < ApplicationController
	def index
		@campaigns = Campaign.all
	end

	def create
		@campaign = Campaign.new(campaign_params)
		if @campaign.save
			redirect_to @campaign
		else
			render 'new'
		end
	end

	def new
		@campaign = Campaign.new
	end

	def show
		@campaign = Campaign.find(params[:id])
	end

	def edit
		@campaign = Campaign.find(params[:id])
	end

	def update
		@campaign = Campaign.find(params[:id])
		if @campaign.update(campaign_params)
			redirect_to @campaign
		else
			render "edit"
		end
	end

	private
	def campaign_params
		params.require(:name).permit(:description, :organization_id)
	end
end
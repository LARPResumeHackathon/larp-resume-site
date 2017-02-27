class CampaignsController < ApplicationController
	before_action :set_campaign, only: [:show, :edit, :update]

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

	end

	def edit

	end

	def update
		if @campaign.update(campaign_params)
			redirect_to @campaign
		else
			render "edit"
		end
	end

	def set_campaign
		@campaign = Campaign.find(params[:id])
	end

	private
	def campaign_params
		params.require(:name).permit(:description, :organization_id)
	end
end

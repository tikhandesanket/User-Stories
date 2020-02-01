class DashboardsController < ApplicationController
	before_action :authenticate_user!


	def index	
		if params[:search].present?		
			@users = User.where("age = ? OR gender = ? OR country = ?", params[:age],params[:gender],params[:country])
		else
			@users = User.all
		end

		respond_to do |format|
		format.html
		format.js			
		end
	end

end

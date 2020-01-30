class DashboardsController < ApplicationController
	before_action :authenticate_user!


	def index
	
		if params[:search].present?
			@users = type_class.where("age like (?) AND gender like (?) AND country like (?)", "%#{params[:age]}%", "%#{params[:gender]}%", "%#{params[:country]}%")

		else
				@users = User.all

		end
	end

end

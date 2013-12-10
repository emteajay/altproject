class CompaniesController < ApplicationController

	def index
		@company = Companies.search_for(params[:q])
	end

	def show
		
	end

	def create

	end

	def destroy

	end	

end
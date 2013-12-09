class CompaniesController < ApplicationController

	def index
		@company = Companies.search_for(params[:q])
	end

end
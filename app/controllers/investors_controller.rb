class InvestorsController < ApplicationController


	def index
		@investor = FinancialOrganization.search_for(params[:q])
	end


end

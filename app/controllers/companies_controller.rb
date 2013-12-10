class CompaniesController < ApplicationController

	def index
		@company = Companies.search_for(params[:q])
	end

	# def show
		
	# end

	# def create
	# 	@investments = Investment.find(params[:invesments_id])
	# 	@company = @investment.companies.create(params[:companies]
	# 	redirect_to companies_path(@company)
	# end

	# def destroy
	# 	@company = Companies.find(params[:invesments_id])
	# 	@company = @company.companies.find(params[:id])
	# 	@company.destroy
	# 	redirect_to companies_path(@company)
	# end	

end
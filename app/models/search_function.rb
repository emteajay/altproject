class SearchFunction < ActiveRecord::Base

	def search
	model_type = params[:search_model]
	
	if model_type == "Company"
		@company = Companies.search_for(params[:q])
	elsif model_type == "People"
		@people = Person.search_for(params[:q])
	elsif model_type == "Investors"
		@investor = FinancialOrganization.search_for(params[:q])
	else
		puts "Something went wrong in the back-end :("							
	end

end

class InvestorsController < ApplicationController

	def index
		@investor = search_for(params[:q])
	end

	private

	def search_for(query) #self is like company.search_for
		
		# our_company = Company.where(name: query) use when stored to database. DONT DO YET BECAUSE DATABASE WON'T BE UPDATED
		# if our_company.nil?
		return if query.nil?
		#Crunchbase::API.key = 'yecqtsu3dszque7rntydphap'
		investor = Crunchbase::FinancialOrganization.find(query)
		# @our_company = Company.new #create a new instance of the company
		# @our_company.name = company.name
		# @our_company.total_money_raised = company.total_money_raised
		# @our_company.phone_number = company.twitter_username
		# @our_company.description = company.overview
		# @our_company
		# our_company.save #will save to database
		#puts "Crunchbase company class is #{company.class}" #will only show up in irb
	end

end

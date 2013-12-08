class Companies < ActiveRecord::Base

	belongs_to :investments

	private

	def self.search_for(query) #self is like company.search_for
		
		# our_company = Companies.where(name: query) #use when stored to database. DONT DO YET BECAUSE DATABASE WON'T BE UPDATED
		# unless our_company
		company = Crunchbase::Company.find(query)
			# @our_company = Companies.new #create a new instance of the company
			# @our_company.name = company.name
			# @our_company.permalink = company.permalink
			# @our_company.phone_number = company.phone_number
			# @our_company.total_money_raised = company.total_money_raised
			# @our_company.category_code = company.category_code
			# @our_company.founded_year = company.founded_year
			# @our_company.homepage_url = company.homepage_url
			# @our_company.number_of_employees = company.number_of_employees
			# @our_company.twitter_username = company.twitter_username
			# @our_company.overview = company.overview
			# @our_company.save	
			# @our_company
		# end
		#will save to database
		#puts "Crunchbase company class is #{company.class}" #will only show up in irb
	end
end

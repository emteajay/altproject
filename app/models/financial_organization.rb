class FinancialOrganization < ActiveRecord::Base

	has_many :compaines

	private

	def self.search_for(query) #self is like company.search_for
		company = Crunchbase::FinancialOrganization.find(query)
		# saved_company = FinancialOrganization.where(name: query) #use when stored to database. DONT DO YET BECAUSE DATABASE WON'T BE UPDATED
		# saved_company = FinancialOrganization.find_or_create_by(
		# 	name: financial_organization.name  ,
		# 	permalink: financial_organization.permalink ,
		# 	description: financial_organization.description ,
		# 	founded_year: financial_organization.founded_year ,
		# 	funds: financial_organization.funds ,
		# 	homepage_url: financial_organization.homepage_url ,
		# 	number_of_employees: financial_organization.number_of_employees ,	
		# 	offices: financial_organization.offices	,
		# 	overview: financial_organization.overview ,
		# 	phone_number: financial_organization.phone_number ,
		# 	twitter_username: financial_organization.twitter_username
		# 	)         
	end
	
end

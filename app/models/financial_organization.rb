class FinancialOrganization < ActiveRecord::Base

	has_many :companies

	serialize :funds
	serialize :offices
	serialize :investments
	serialize :relationships
	serialize :milestones

	
	private

	def self.search_for(query) #self is like company.search_for
		financial_organization = Crunchbase::FinancialOrganization.find(query)
		saved_company = FinancialOrganization.where(name: query) #use when stored to database. DONT DO YET BECAUSE DATABASE WON'T BE UPDATED
		saved_company = FinancialOrganization.find_or_create_by(
			name: financial_organization.name  ,
			permalink: financial_organization.permalink ,
			description: financial_organization.description ,
			founded_year: financial_organization.founded_year ,
			founded_month: financial_organization.founded_month ,
			founded_day: financial_organization.founded_day ,
			funds: financial_organization.funds ,
			#investments: financial_organization.investments ,
			homepage_url: financial_organization.homepage_url ,
			number_of_employees: financial_organization.number_of_employees ,	
			offices: financial_organization.offices	,
			overview: financial_organization.overview ,
			phone_number: financial_organization.phone_number ,
			twitter_username: financial_organization.twitter_username ,
			updated_at: financial_organization.updated_at ,
			#relationships: financial_organization.relationships ,
			#milestones: financial_organization.milestones
			)         
	end
	
end

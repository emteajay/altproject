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
		saved_financial_organization = FinancialOrganization.where(name: query)
		saved_financial_organization = FinancialOrganization.find_or_create_by(permalink: financial_organization.permalink, 
			name: financial_organization.name) do |cmp|
			return cmp unless cmp.new_record?
			cmp.tap do |c|
				c.name = financial_organization.name
				c.permalink = financial_organization.permalink
				c.description = financial_organization.description
				c.founded_year = financial_organization.founded_year
				c.founded_month = financial_organization.founded_month
				c.founded_day = financial_organization.founded_day
				c.funds = financial_organization.funds
				#c.investments = financial_organization.investments
				c.homepage_url = financial_organization.homepage_url
				c.number_of_employees = financial_organization.number_of_employees	
				c.offices = financial_organization.offices
				c.overview = financial_organization.overview
				c.phone_number = financial_organization.phone_number
				c.twitter_username = financial_organization.twitter_username
				c.updated_at = financial_organization.updated_at
				#c.relationships = financial_organization.relationships
				#c.milestones = financial_organization.milestones
			end
		end		
	end
	
end

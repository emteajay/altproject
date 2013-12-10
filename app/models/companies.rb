class Companies < ActiveRecord::Base

	belongs_to :investments

	serialize :offices
	serialize :acquisitions
	serialize :funding_rounds
	# serialize :relationships
	# serialize :investments
	# serialize :milestones
	# serialize :ipo

	private

	def self.search_for(query) #self is like company.search_for
		company = Crunchbase::Company.find(query)
		saved_company = Companies.where(name: query) 
		saved_company = Companies.find_or_create_by(permalink: company.permalink, name: company.name) do |cmp|
			return cmp unless cmp.new_record?
			cmp.tap do |c|
				c.permalink = company.permalink
				c.name = company.name 
				c.acquisitions = company.acquisitions
				c.phone_number = company.phone_number
				c.category_code = company.category_code
				c.founded_year = company.founded_year
				c.founded_month = company.founded_month
				c.founded_day = company.founded_day
				c.funding_rounds = company.funding_rounds
				c.homepage_url = company.homepage_url
				#c.ipo = company.ipo
				c.offices = company.offices
				c.number_of_employees = company.number_of_employees
				c.total_money_raised = company.total_money_raised
				c.twitter_username = company.twitter_username
				c.overview = company.overview
				c.updated_at = company.updated_at
				#c.relationships = company.relationships
				#c.investments = company.investments
				#c.milestones = company.milestones
			end	
		end		      
	end
end

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
		saved_company = Companies.where(name: query) #use when stored to database. DONT DO YET BECAUSE DATABASE WON'T BE UPDATED
		saved_company = Companies.find_or_create_by(
			permalink: company.permalink ,
			name: company.name  ,
			acquisitions: company.acquisitions ,
			phone_number: company.phone_number ,
			category_code: company.category_code ,
			founded_year: company.founded_year ,
			founded_month: company.founded_month ,
			founded_day: company.founded_day ,
			funding_rounds: company.funding_rounds ,
			homepage_url: company.homepage_url ,
			#ipo: company.ipo ,
			offices: company.offices ,
			number_of_employees: company.number_of_employees ,
			total_money_raised: company.total_money_raised ,
			twitter_username: company.twitter_username ,
			overview: company.overview ,
			updated_at: company.updated_at
			#relationships: company.relationships ,
			#investments: company.investments ,
			#milestones: company.milestones ,	
			)         
	end
end

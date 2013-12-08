class Investment < ActiveRecord::Base
	validates :fund, presence: true
	validates :fund, presence: true
	belongs_to :user
	belongs_to :financial_organization
end

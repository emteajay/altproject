class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #:recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable, :registerable
  has_many :investment, dependent: :destroy
  has_many :financial_organization
end

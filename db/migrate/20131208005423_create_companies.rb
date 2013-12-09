class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :permalink
      t.string :name
      t.string :acquisitions
      t.string :phone_number
      t.string :category_code
      t.integer :founded_year
      t.integer :founded_month
      t.integer :founded_day
      t.string :funding_rounds
      t.string :homepage_url
      t.string :ipo
      t.string :offices
      t.integer :number_of_employees
      t.string :total_money_raised
      t.string :twitter_username
      t.string :overview
      t.datetime :updated_at
      t.string :relationships
      t.string :investments
      t.string :milestones
      t.references :investments
      t.references :financial_organizations

      t.timestamps
    end
  end
end

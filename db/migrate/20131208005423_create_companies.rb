class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :permalink
      t.string :name
      t.text :acquisitions
      t.string :phone_number
      t.string :category_code
      t.integer :founded_year
      t.integer :founded_month
      t.integer :founded_day
      t.text :funding_rounds
      t.string :homepage_url
      t.text :ipo
      t.text :offices
      t.integer :number_of_employees
      t.string :total_money_raised
      t.string :twitter_username
      t.string :overview
      t.datetime :updated_at
      t.text :relationships
      t.text :investments
      t.text :milestones
      t.references :investments
      t.references :financial_organizations

      t.timestamps
    end
  end
end

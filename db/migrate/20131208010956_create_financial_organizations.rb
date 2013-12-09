class CreateFinancialOrganizations < ActiveRecord::Migration
  def change
    create_table :financial_organizations do |t|
      t.string :name
      t.string :permalink
      t.string :description
      t.integer :founded_year
      t.integer :founded_month
      t.integer :founded_day
      t.string :funds
      t.string :investments
      t.string :homepage_url
      t.integer :number_of_employees
      t.string :offices
      t.string :overview
      t.string :phone_number
      t.string :twitter_username
      t.datetime :updated_at
      t.string :relationships
      t.string :milestones
      t.string :blog_url

      t.timestamps
    end
  end
end

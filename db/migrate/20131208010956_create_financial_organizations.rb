class CreateFinancialOrganizations < ActiveRecord::Migration
  def change
    create_table :financial_organizations do |t|
      t.string :name
      t.string :permalink
      t.string :description
      t.integer :founded_year
      t.integer :founded_month
      t.integer :founded_day
      t.text :funds
      t.text :investments
      t.string :homepage_url
      t.integer :number_of_employees
      t.text :offices
      t.string :overview
      t.string :phone_number
      t.string :twitter_username
      t.datetime :updated_at
      t.text :relationships
      t.text :milestones
      t.string :blog_url
      t.references :users

      t.timestamps
    end
  end
end

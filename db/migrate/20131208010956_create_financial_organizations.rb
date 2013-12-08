class CreateFinancialOrganizations < ActiveRecord::Migration
  def change
    create_table :financial_organizations do |t|
      t.string :name
      t.string :permalink
      t.string :description
      t.integer :founded_year
      t.integer :funds
      t.string :homepage_url
      t.integer :number_of_employees
      t.integer :integer
      t.integer :offices
      t.text :overview
      t.text :phone_number
      t.string :twitter_username

      t.timestamps
    end
  end
end

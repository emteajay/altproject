class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :permalink
      t.string :name
      t.integer :acquisitions
      t.text :phone_number
      t.string :category_code
      t.integer :founded_year
      t.integer :funding_rounds
      t.string :homepage_url
      t.integer :ipo
      t.integer :offices
      t.integer :number_of_employees
      t.string :total_money_raised
      t.string :twitter_username
      t.text :overview

      t.timestamps
    end
  end
end

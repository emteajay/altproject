class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.string :fund
      t.integer :vintage_year
      t.integer :commitment
      t.integer :paid_in
      t.float :distributed
      t.float :adjustment
      t.float :net_asset_value
      t.float :irr
      t.references :users
      t.references :financial_organizations

      t.timestamps
    end
  end
end

class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :fund
      t.integer :commitment
      t.integer :paid_in
      t.float :distributed
      t.float :adjustment
      t.float :net_asset_value

      t.timestamps
    end
  end
end

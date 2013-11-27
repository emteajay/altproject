class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.string :fund
      t.integer :commitment
      t.integer :paid_in
      t.float :distributed
      t.float :adjustment
      t.float :net_asset_value
      t.integer :user_id

      t.timestamps
    end
  end
end

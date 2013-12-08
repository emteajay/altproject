class CreateSearchFunctions < ActiveRecord::Migration
  def change
    create_table :search_functions do |t|
      t.string :search_criteria

      t.timestamps
    end
  end
end

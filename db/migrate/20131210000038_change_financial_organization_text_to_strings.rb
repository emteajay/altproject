class ChangeFinancialOrganizationTextToStrings < ActiveRecord::Migration
  def change
	change_column :financial_organizations, :funds, :text
  end
end

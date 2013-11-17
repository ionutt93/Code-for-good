class AddAdminToCompanies < ActiveRecord::Migration
  def change
    change_column :companies, :admin, :boolean, default: false
  end
end

class AddPrivacyToProject < ActiveRecord::Migration
  def change
    add_column :updates, :privacy, :boolean, default: true 
  end
end

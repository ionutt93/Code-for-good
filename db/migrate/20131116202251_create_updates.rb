class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.integer :company_id
      t.text :update_SEI
      t.text :challenge
      t.text :support_req
      t.integer :impact, default: 0
      t.integer :employed, default: 0
      t.integer :volunteers, default: 0
      t.integer :raised_funds, default: 0

      t.timestamps
    end
  end
end

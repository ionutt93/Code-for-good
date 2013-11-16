class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.integer :company_id
      t.text :update_SEI
      t.text :challenge
      t.text :support_req
      t.integer :impact
      t.integer :employed
      t.integer :volunteers
      t.integer :raised_funds

      t.timestamps
    end
  end
end

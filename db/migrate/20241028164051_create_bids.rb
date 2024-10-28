class CreateBids < ActiveRecord::Migration[8.0]
  def change
    create_table :bids do |t|
      t.string :company_name, null: false
      t.string :route, null: false
      t.integer :load, null: false
      t.integer :price, null: false

      t.timestamps
    end

    add_index :bids, :company_name
    add_index :bids, :route
    add_index :bids, :load
    add_index :bids, [ :company_name, :route, :load ], unique: true
  end
end

class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :owner
      t.decimal :balance

      t.timestamps
    end
  end
end

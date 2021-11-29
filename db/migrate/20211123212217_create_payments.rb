class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.string :description
      t.string :operation
      t.integer :signal

      t.timestamps
    end
  end
end

class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :payment_type
      t.datetime :date
      t.decimal :value
      t.string :cpf
      t.string :card
      t.datetime :time
      t.string :owner
      t.string :store
      t.integer :store_id

      t.timestamps
    end
  end
end

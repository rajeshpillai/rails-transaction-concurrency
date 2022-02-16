class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.references :account, null: false, foreign_key: true
      t.string :tran_type

      t.timestamps
    end
  end
end

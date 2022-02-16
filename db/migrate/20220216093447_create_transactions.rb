class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.string :account_no
      t.string :tran_type

      t.timestamps
    end
  end
end

class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.decimal :balance
      t.string :account_no

      t.timestamps
    end
  end
end

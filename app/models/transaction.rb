class Transaction < ApplicationRecord
  belongs_to :account

  after_create_commit :update_account_balance

  private 
  def update_account_balance
    account = Account.find(self.account_id) 

    if self.tran_type == "D" 
      if (self.amount < account.balance) 
        account.balance -= self.amount
      else
        raise "Insufficient account balance!"
      end
    elsif self.tran_type == "C"
      account.balance += self.amount
    end
    account.save!
  end
end

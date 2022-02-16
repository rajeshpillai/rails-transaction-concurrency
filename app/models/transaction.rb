class Transaction < ApplicationRecord
  belongs_to :account

  after_create_commit :update_account_balance


  private

  def  update_account_balance 
  end
  

end

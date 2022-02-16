json.extract! account, :id, :name, :balance, :account_no, :created_at, :updated_at
json.url account_url(account, format: :json)

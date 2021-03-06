# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Transaction.destroy_all
Account.destroy_all

account1 = Account.create({
  name: "Rajesh",
  balance: 1000,
  account_no: 1
})

5.times do |index|
  account1.transactions.create({
    tran_type: "D",
    amount: 100
  })
end

account2 = Account.create({
  name: "Rohan",
  balance: 10000,
  account_no: 2
})

2.times do |index|
  account2.transactions.create({
    tran_type: "D",
    amount: 1000
  })
end
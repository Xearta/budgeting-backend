# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


account = Account.create(name: 'Checking', balance: 1000)
transaction = Transaction.create(account_id: 1, amount: 10, typeOfTransaction: 'deposit', date: DateTime.now, description: 'Found $10')
transaction = Transaction.create(account_id: 1, amount: 25, typeOfTransaction: 'withdraw', date: DateTime.now, description: 'Withdrew $25')

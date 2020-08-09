# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Account.create(name: 'Paycheck', typeOfAccount: 'Income', planned: 2000, spent: 0, remaining: 2000, available: 0)
Account.create(name: 'Rent', typeOfAccount: 'Expense', planned: 1000, spent: 0, remaining: 1000, available: 0)
Account.create(name: 'Groceries', typeOfAccount: 'Expense', planned: 250, spent: 0, remaining: 250, available: 0)
Account.create(name: 'Phone Bill', typeOfAccount: 'Expense', planned: 100, spent: 0, remaining: 100, available: 0)
Account.create(name: 'Auto Loan', typeOfAccount: 'Expense', planned: 500, spent: 0, remaining: 500, available: 0)

Transaction.create(account_id: 2, amount: 500, typeOfTransaction: 'expense', date: DateTime.now, description: 'Spent $500 towards rent')
# transaction_two = Transaction.create(account_id: 1, amount: 25, typeOfTransaction: 'withdraw', date: DateTime.now, description: 'Withdrew $25')

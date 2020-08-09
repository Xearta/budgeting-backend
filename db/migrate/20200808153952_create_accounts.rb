class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :typeOfAccount
      t.float :planned
      t.float :spent
      t.float :remaining
      t.float :available

      t.timestamps
    end
  end
end

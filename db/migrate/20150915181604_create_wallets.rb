class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.string :title
      t.integer :pennies

      t.timestamps
    end
  end
end

class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :amount, precision: 8, scale: 2
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :campaign, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

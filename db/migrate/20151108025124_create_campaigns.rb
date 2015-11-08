class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :header
      t.decimal :cost, precision: 8, scale: 2
      t.string :title
      t.string :picture1
      t.string :picture2
      t.string :picture1_title
      t.string :picture2_title
      t.string :description
      t.date :expiration
      t.decimal :minimum_contribution, precision: 8, scale: 2
      t.string :rfid
      t.references :owner, index: true
      t.references :custodian, index: true
      t.boolean :live, default:false

      t.timestamps null: false
    end
  end
end

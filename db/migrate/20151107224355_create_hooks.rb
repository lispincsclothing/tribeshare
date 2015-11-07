class CreateHooks < ActiveRecord::Migration
  def change
    create_table :hooks do |t|
      t.string :rfid
      t.string :photon

      t.timestamps null: false
    end
  end
end

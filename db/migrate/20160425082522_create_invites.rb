class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.references :wedding, index: true, foreign_key: true
      t.string :sender_id
      t.string :receiver_id

      t.timestamps null: false
    end
  end
end

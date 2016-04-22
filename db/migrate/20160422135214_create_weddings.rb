class CreateWeddings < ActiveRecord::Migration
  def change
    create_table :weddings do |t|
      t.string :email
      t.string :title
      t.string :description
      t.text :image
      t.integer :user_id
      t.string :info

      t.timestamps null: false
    end
  end
end

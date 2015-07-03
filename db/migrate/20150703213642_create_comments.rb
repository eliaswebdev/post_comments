class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :post, index: true, foreign_key: true
      t.string :name
      t.string :email
      t.text :message

      t.timestamps null: false
    end
  end
end

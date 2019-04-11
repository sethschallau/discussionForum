class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.int :id
      t.text :text
      t.datetime :date
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end

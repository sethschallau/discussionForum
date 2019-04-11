class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.int :id
      t.string :title
      t.text :text
      t.datetime :date
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end

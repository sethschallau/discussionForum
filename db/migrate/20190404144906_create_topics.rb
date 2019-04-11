class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.int :id
      t.string :name
      t.text :description
      t.boolean :isModerated

      t.timestamps
    end
  end
end

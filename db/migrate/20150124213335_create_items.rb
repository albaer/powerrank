class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :text
      t.text :description
      t.integer :position
      t.integer :list_id

      t.timestamps null: false
    end
  end
end

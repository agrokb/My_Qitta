class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.references :user, null: false, foreign_key: true
      t.text :memo
      t.boolean :is_publish
      t.text :title
      t.text :skill_tag

      t.timestamps
    end
  end
end

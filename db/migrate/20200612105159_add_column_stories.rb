class AddColumnStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories,:like,:boolean,default: false
    add_column :stories,:link_count,:integer
  end
end

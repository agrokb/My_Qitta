class ChangeColumnStories < ActiveRecord::Migration[6.0]
  def change
    rename_column :stories,:link_count,:like_count
  end
end

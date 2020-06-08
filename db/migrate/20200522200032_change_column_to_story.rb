class ChangeColumnToStory < ActiveRecord::Migration[6.0]
  def change
   change_column :stories,:memo,:text,null:false
   change_column :stories,:title,:text,null:false
   change_column :stories,:is_publish,:boolean,default:true
  end
end

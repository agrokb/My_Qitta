class AddUsername4ToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string ,unique:true
  end
end

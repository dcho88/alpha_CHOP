class AddUserIdToSnps < ActiveRecord::Migration
  def change
    add_column :snps, :user_id, :integer
    add_index :snps, :user_id
    remove_column :snps, :name
  end
end

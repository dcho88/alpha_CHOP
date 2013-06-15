class CreateSnps < ActiveRecord::Migration
  def change
    create_table :snps do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end

class CreatePolymorphisms < ActiveRecord::Migration
  def change
    create_table :polymorphisms do |t|
      t.string :name

      t.timestamps
    end
  end
end

class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity

      t.references :marionette

      t.timestamps null: false
    end
  end
end

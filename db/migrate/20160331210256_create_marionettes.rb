class CreateMarionettes < ActiveRecord::Migration
  def change
    create_table :marionettes do |t|
      t.string :name
      t.string :element
      t.integer :health, default: 20

      t.timestamps null: false
    end
  end
end

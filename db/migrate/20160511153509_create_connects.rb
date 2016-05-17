class CreateConnects < ActiveRecord::Migration
  def change
    create_table :connects do |t|
      t.text :dmsg
      t.integer :food_id
      t.timestamps null: false
    end
  end
end

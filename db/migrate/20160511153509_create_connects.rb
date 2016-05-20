class CreateConnects < ActiveRecord::Migration
  def change
    create_table :connects do |t|   #댓글 DB
      t.text :dmsg
      t.integer :food_id            #게시판의 글은 여러 개의 댓글을 가질수 있다.
      t.integer :score
      t.timestamps null: false
    end
  end
end

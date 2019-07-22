class CreateCommentVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_votes do |t|

      t.references :users, index: true, foreign_key: true
      t.references :comments, index: true, foreign_key: true

      t.timestamps
    end
  end
end

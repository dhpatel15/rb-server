class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.references: notable, polymorphic: true 

      t.timestamps
    end
  end
end

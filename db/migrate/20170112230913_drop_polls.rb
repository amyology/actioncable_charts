class DropPolls < ActiveRecord::Migration[5.0]
  def up
    drop_table :polls
    drop_table :votes
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end

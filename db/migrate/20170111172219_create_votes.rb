class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :poll_id
      t.string :value

      t.timestamps
    end
  end
end

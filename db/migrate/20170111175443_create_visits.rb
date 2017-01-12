class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.string :ip
      t.string :country
      t.string :city
      t.string :state
      t.integer :postal_code

      t.timestamps
    end
  end
end

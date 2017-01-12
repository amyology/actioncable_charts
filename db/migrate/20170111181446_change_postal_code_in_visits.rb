class ChangePostalCodeInVisits < ActiveRecord::Migration[5.0]
  def change
    remove_column :visits, :postal_code, :integer
    add_column :visits, :postal_code, :string
  end
end

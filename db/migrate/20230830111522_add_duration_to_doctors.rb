class AddDurationToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :duration, :string
  end
end

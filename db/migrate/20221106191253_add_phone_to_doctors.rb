class AddPhoneToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :phone, :string
    add_index :doctors, :phone, unique: true
  end
end

class AddAvatarToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :avatar, :string
  end
end

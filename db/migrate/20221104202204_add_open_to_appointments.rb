class AddOpenToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :open, :boolean, default: true
  end
end

class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :doctor, null: true, foreign_key: true
      t.references :user, null: true, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end

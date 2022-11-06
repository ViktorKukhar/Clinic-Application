ActiveAdmin.register Appointment do

  permit_params :doctor_id, :user_id, :date, :recommendation, :open

  index do
    selectable_column
    id_column
    column :date
    column :doctor
    column :user
    actions
  end

  filter :doctor
  filter :date


  form do |f|
    f.inputs do
      f.input :date
      f.input :doctor
      f.input :user
      f.input :recommendation
      f.input :open


    end
    f.actions
  end
end

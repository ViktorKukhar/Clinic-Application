ActiveAdmin.register Appointment do

  permit_params :doctor_id, :user_id, :date

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

    end
    f.actions
  end
end

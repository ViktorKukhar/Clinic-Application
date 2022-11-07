ActiveAdmin.register Doctor do

  permit_params :first_name, :last_name, :phone, :email, :password, :password_confirmation, :category_id, :avatar

  index do
    selectable_column
    id_column
    column :category
    column :first_name
    column :last_name
    column :phone
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :category
    actions
  end

  filter :phone
  filter :email
  filter :category


  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :phone
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :category
      f.input :avatar, as: :file
    end
    f.actions
  end


end

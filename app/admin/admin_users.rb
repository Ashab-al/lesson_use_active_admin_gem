ActiveAdmin.register AdminUser do
  permit_params :email, :name, :description, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :name
    actions
  end

  filter :email
  filter :name

  form do |f|
    f.inputs do
      f.input :email
      f.input :name
      f.input :description
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end

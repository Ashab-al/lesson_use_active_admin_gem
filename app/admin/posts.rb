ActiveAdmin.register Post do
  permit_params :title, :body, :published, :admin_user_id

  index do
    selectable_column
    id_column
    column :title
    column :admin_user_id
    column :created_at
    column :published
    actions
  end

  form do |f|
    f.inputs 'Детали поста' do
      f.input :title
      f.input :body
      f.input :published
      f.input :admin_user_id
    end
    f.actions
  end
  
end

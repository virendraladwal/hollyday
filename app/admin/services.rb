ActiveAdmin.register Service do
    permit_params :logo, :title, :body 
  
    index do
      selectable_column
      id_column
      column :logo
      column :title
      column :body
      column :current_sign_in_at
      column :sign_in_count
      column :created_at
      actions
    end
  
    filter :logo
    filter :title
    filter :body
    filter :current_sign_in_at
    filter :sign_in_count
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :logo
        f.input :title
        f.input :body 
      end
      f.actions
    end
  
  end
  
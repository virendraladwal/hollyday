ActiveAdmin.register Team do
    permit_params :title, :subtitle, :body 
  
    index do
      selectable_column
      id_column
      column :title
      column :subtitle
      column :body
      column :current_sign_in_at
      column :sign_in_count
      column :created_at
      actions
    end
  
    filter :title
    filter :subtitle
    filter :body
    filter :current_sign_in_at
    filter :sign_in_count
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :title
        f.input :subtitle
        f.input :body 
      end
      f.actions
    end
  
  end
  
ActiveAdmin.register Pricing do
    permit_params :title, :price 
  
    index do
      selectable_column
      id_column
      column :title
      column :price 
      column :current_sign_in_at
      column :sign_in_count
      column :created_at
      actions
    end
  
    filter :title
    filter :price 
    filter :current_sign_in_at
    filter :sign_in_count
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :title
        f.input :price 
      end
      f.actions
    end
  
  end
  
ActiveAdmin.register Skill do
    permit_params :subject, :presente
  
    index do
      selectable_column
      id_column
      column :subject
      column :presente
      column :current_sign_in_at
      column :sign_in_count
      column :created_at
      actions
    end
  
    filter :subject
    filter :presente
    filter :current_sign_in_at
    filter :sign_in_count
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :subject
        f.input :presente
      end
      f.actions
    end
  
  end
  
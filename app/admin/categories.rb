ActiveAdmin.register Category do
  permit_params :name

  form do |f|
    inputs do
      input :name
    end
    actions
  end


  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

ActiveAdmin.register Post do
  permit_params :title, :body, :tags, :category_name
  
  # permit_params do
  #   permitted = [:title, :body, :tags, :category]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

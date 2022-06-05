ActiveAdmin.register Post do
  permit_params :title, :body, :tags, :category
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body, :tags, :category]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

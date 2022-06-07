ActiveAdmin.register Post do
  permit_params :title, :body, :tags_raw, :category_name

  form do |f|
    f.inputs "Post" do
      f.input :category 
      f.input :title
      f.input :body
      f.input :tags_raw, :as => :string
    end
    f.actions
  end

  controller do
    def update
      puts params[:post][:tags_raw]
      super
    end
  end
  
  # permit_params do
  #   permitted = [:title, :body, :tags, :category]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

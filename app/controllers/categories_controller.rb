class CategoriesController < ApplicationController
  def show
    @category = Post.where(category: params[:name]).order("created_at DESC")
    @category_name = params[:name]
  end
end

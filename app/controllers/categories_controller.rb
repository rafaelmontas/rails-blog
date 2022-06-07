class CategoriesController < ApplicationController
  def show
    @category = Post.where(category: params[:name]).order("created_at DESC")
  end
end

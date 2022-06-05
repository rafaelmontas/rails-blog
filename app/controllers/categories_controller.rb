class CategoriesController < ApplicationController
  def show
    @category = Post.where(category: params[:name])
  end
end

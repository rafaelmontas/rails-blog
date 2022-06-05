class TagsController < ApplicationController
  def show
    @tag = Post.where("tags like ?", "%#{params[:name]}%")
  end
end

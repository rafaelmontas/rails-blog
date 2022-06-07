class TagsController < ApplicationController
  def show
    @tag = Post.where("tags like ?", "%#{params[:name]}%").order("created_at DESC")
  end
end

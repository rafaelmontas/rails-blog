class TagsController < ApplicationController
  def show
    @tag = Post.where("'#{params[:name]}' = ANY (tags)").order("created_at DESC")
  end
end

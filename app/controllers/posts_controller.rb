class PostsController < ApplicationController
  def index
    if params[:query].present?
      @posts = Post.where("title LIKE ? OR body LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
    else
      @posts = Post.all
    end
    if turbo_frame_request?
      render partial: "list-posts", locals: { posts: @posts }
    else
      render "index"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      render turbo_stream: [
        turbo_stream.prepend("posts", @post),
        turbo_stream.replace("form_post", partial: "form", locals: { post: Post.new })
      ]
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path, status: :see_other
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end

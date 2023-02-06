class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      array = @post.body.split("]")
      array.map{ |item| item.split("[") }
      array.each do |item|
        @post.scores.create(kind: :lyric, content: item.first) if item.first.present?
        @post.scores.create(kind: :chord, content: item.last) if item.last.present?
      end
      redirect_to posts_path
    else
      falsh.now['danger'] = 'error'
      render :new
    end
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def update
    @post = current_user.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      flash.now['danger'] = 'error'
      render :edit
    end
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destory!
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:body, :song_title, :capotast)
  end
end

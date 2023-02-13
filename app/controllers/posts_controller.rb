class PostsController < ApplicationController
  before_action :set_post, only: %i[edit update destroy]

  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).includes(:user).order(created_at: :desc)
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

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      flash.now['danger'] = 'error'
      render :edit
    end
  end

  def destroy
    @post.destroy!
    redirect_to posts_path, success: '削除しました'
  end

  def bookmarks
    @q = current_user.bookmark_posts.ransack(params[:q])
    @bookmark_posts = @q.result(distinct: true).includes(:user).order(created_at: :desc).page(params[:page])
  end

  private

  def set_post
    @post = current_user.posts.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:body, :song_title, :capotast)
  end
end

class PostsController < ApplicationController
  before_action :set_post, only: %i[edit update destroy]
  skip_before_action :require_login, only: %i[index show]

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
      array.map!{ |item| item.split("[") }
      array.each do |item|
        @post.scores.create(kind: :lyric, content: item.first) if item.first.present?
        @post.scores.create(kind: :chord, content: item.last) if item.last.present?
      end
      redirect_to posts_path, success: '投稿しました'
    else
      flash.now['danger'] = '投稿に失敗しました'
      render :new
    end
  end

  def edit; end

  def update
    @post = current_user.posts.find(params[:id])
    if @post.update(post_params)
      array = @post.body.split("]")
      array.map!{ |item| item.split("[") }
      array.each do |item|
        @post.scores.update(kind: :lyric, content: item.first) if item.first.present?
        @post.scores.update(kind: :chord, content: item.last) if item.last.present?
      end
      redirect_to @post, success: '更新しました'
    else
      flash.now['danger'] = '更新に失敗しました'
      render :edit
    end
  end

  def destroy
    @post.destroy!
    redirect_to posts_path, success: '削除しました'
  end

  def bookmarks
    @q = current_user.bookmark_posts.ransack(params[:q])
    @bookmark_posts = @q.result(distinct: true).includes(:user).order(created_at: :desc)
  end

  private

  def set_post
    @post = current_user.posts.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:body, :song_title, :capotast, :airtist, :genre)
  end
end

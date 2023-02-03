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
    @post = Post.new(post_params)
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
  end

  private

  def post_params
    params.require(:post).permit(:body, :song_title, :capotast)
  end
end

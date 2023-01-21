class BookmarkController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    current_user.bookmark(@post)
  end

  def destroy
    @post = current_user.bookmarks.find(params[:post_id]).post
    current_user.unbookmark(@post)
  end
end

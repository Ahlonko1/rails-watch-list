class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(list_params)
    @bookmark.save
  end

  def destroy
    @bookmark.destroy
    redirect_to lists_path(@bookmark.list), status: :see_other
  end

  private
  def bookmark
    params.require(:bookmark).permit(:comment)
  end

end

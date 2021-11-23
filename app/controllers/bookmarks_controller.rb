class BookmarksController < ApplicationController
    # def index
    #   @bookmarks = Bookmark.all
    # # @movies = Movie.all
    # end
    def new
      @bookmark = Bookmark.new
    end
    # def create
    # end
end

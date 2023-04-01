class BooksController < ApplicationController

  def new
    @book_image = Book.new
  end

end

class BooksController < ApplicationController

  def new
    @book_image = Book.new
  end

  def index

  end

  def create
    @book = Book.new(book_params)
    @book_image.user_id = current_user.id
    @book.save
    redirect_to book_path(book.id)
  end

  def show

  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end


private

def book_params
  params.require(:book).permit(:title,:body)
end

end
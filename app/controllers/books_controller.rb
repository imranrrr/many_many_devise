class BooksController < ApplicationController


  def index
    @books=Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save!
      Accout.create!(book_id: @book.id, author_id: current_author.id)
      flash[:notice] = "successfully Added!"
      redirect_to accouts_path
    else
      flash[:notice] = "Book not Added!"
    end
  end

  private

  def book_params
    params.require(:book).permit(:bookName)
  end

end

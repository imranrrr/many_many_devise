class BooksController < ApplicationController


  def index

  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save!
      Accout.create!(book_id: @book.id, author_id: current_author.id)
      flash[:notice] = "successfully Added!"
    else
      flash[:notice] = "Book not Added!"
    end
  end

end

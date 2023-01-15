class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def index
    @books= Book.all
    @book=Book.new
  end
  
  def create
    @book = Book.new(book_params)

    if @book.save
      flash[:notice] = "Book was successfully created"
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end
  
  def edit
  end
  
  def update
  end
  
  
private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
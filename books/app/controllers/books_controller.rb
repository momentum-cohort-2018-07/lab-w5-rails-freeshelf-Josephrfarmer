class BooksController < ApplicationController
  def index
    @books = Book.all 
  end

  def new
    @book = Book.new
  end
  #make a new album 
  def create 
    @book = Book.create(title: params[:title],
                        author: params[:author],
                        description: params[:description],
                        URL: params[:URL]) 
    redirect_to books_path
  end 

  def show 
    @book = Book.find(params[:id])
  end  

  def edit
    @book = Book.find(params[:id])
  end
  
  def update 
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
      else
        format.html { render :edit }
      end
    end

  end  

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    respond_to do |format|
      format.html { redirect_to @book, notice: 'Book was successfully destroyed.' }
    end
  end 

  private
    def book_params
      params.require(:book).permit(:title, :author, :description, :URL)
    end
  

end

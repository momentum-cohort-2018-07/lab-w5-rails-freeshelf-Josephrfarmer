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
  end 

  def show 
    @book = Book.find(album_params[:id])
  end  
  
  def edit 
  end  

  def destroy
  end 

  private
    def album_params
      params.permit(:id, :title, :artist, :year)
    end
  

end

class BooksController < ApplicationController
	
   
   def index
      @books = Book.all
   end

   def list

   end

   def show
      @book = Book.find(params[:id])
   end
  
   def new
      @book = Book.new
   end

   def create
   	@book = Book.new(params[:book])
      if @book.save
         redirect_to book_path(@book)
      else
         render :action => 'new'
      end
   end

   def edit

   end

   def update

   end

   def delete

   end	
    def lend
 
    end

end
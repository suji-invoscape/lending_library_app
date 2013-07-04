class BooksController < ApplicationController
	 def list

   end
   def show
 @book = Book.find(params[:id])
   end
   def new

   end
   def create
   	  @book = Book.new(params[:book])
      if @book.save
            redirect_to book_path(@book)
      else
            render :action => 'new'
      end
  end

   end
   def edit

   end
   def update

   end
   def delete

   end	

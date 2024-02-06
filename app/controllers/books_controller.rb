class BooksController < ApplicationController
    def top
    end
    
    def index
        @books = Book.all
        @book = Book.new
    end 
    def create
        @book = Book.new(book_params)
        if @book.save
            flash[:notice] = "Book was successfully created."
            redirect_to "/books/#{@book.id}" 
        else
            @books = Book.all
            render :index
        end
    end
    
    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        flash[:notice] = "Book was successfully destroyed."
        redirect_to "/books"
    end 
    
    def show
        @data = Book.find(params[:id])
       
    end 
    
    def edit
         @edit = Book.find(params[:id])
        
    end 
    
    def update
        if @edit = Book.find(params[:id])
            @edit.update(book_params)
            flash[:notice] = "Book was successfully updated."
            redirect_to "/books/#{@edit.id}"
        end 
    end 
    
    
    private
    def book_params
        params.require(:book).permit(:title, :body)
    end 
end

class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end
end

class Library
  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
  end

  def list_books
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end
end


library = Library.new
library.add_book(Book.new('1984', 'George Orwell'))
library.add_book(Book.new('To Kill a Mockingbird', 'Harper Lee'))
library.list_books

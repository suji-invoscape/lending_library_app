class Book < ActiveRecord::Base
  attr_accessible :author, :book_name, :publisher, :stack
end

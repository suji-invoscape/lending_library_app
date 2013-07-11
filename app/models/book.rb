class Book < ActiveRecord::Base
	has_and_belongs_to_many :users
  attr_accessible :author, :book_name, :publisher, :stack
end

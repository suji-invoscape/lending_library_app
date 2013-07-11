class CreateBooksUsersTable < ActiveRecord::Migration
  def self.up
  create_table 'books_users', :id => false do |t|
    t.column :book_id, :integer
    t.column :user_id, :integer
  end
end
end

 
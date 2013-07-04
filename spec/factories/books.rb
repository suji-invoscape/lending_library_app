# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    book_name "MyString"
    author "MyString"
    publisher "MyString"
    stack 1
  end
end

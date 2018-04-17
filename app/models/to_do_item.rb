class ToDoItem < ApplicationRecord
  has_many :to_do_list
  validates :title, presence: true
end

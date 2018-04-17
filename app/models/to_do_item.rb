class ToDoItem < ApplicationRecord
  has_many :to_do_list
  validates :title, presence: true
  validates :completed, presence: true
end

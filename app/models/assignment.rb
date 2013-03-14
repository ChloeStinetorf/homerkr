class Assignment < ActiveRecord::Base
  attr_accessible :name, :size
  has_and_belongs_to_many :students
end
class Section < ActiveRecord::Base
  belongs_to :wheel
  has_many :questions
end

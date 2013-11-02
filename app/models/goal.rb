class Goal < ActiveRecord::Base
  belongs_to :section
  belongs_to :wheel
end

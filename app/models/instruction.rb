class Instruction < ActiveRecord::Base
  belongs_to :how_to_list
  attr_accessible :description, :sequence
  validates :sequence, :presence => true
  validates :description, :presence => true
end

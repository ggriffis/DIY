class HowToList < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :instructions, :dependent => :delete_all

  def sorted_instructions
    self.instructions.sort_by {|i| i.sequence}
  end
end

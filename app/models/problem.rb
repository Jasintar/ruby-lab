class Problem < ActiveRecord::Base
  attr_accessible :body, :input, :output, :prefix, :title

  validates :title,  :presence => true
  validates :body,   :presence => true
  validates :prefix, :length => { :maximum => 2 }
end

class Problem < ActiveRecord::Base
  attr_accessible :body, :input, :output, :prefix, :title

  validates :title,  :presence => true
  validates :body,   :presence => true
  validates :prefix, :length => { :maximum => 2 }


  state_machine :state, :initial => :unprepared do
    event :done do
      transition :unprepared  => :prepared
    end

    event :unroll do
      transition :prepared => :unprepared
    end
  end
end

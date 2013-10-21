class ConnectionFour < ActiveRecord::Base
  attr_accessible :snew
  # attr_accessible :title, :body
  has_one :connection_three
  has_one :connection_one
end

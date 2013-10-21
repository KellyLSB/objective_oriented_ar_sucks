class ConnectionThree < ActiveRecord::Base
  attr_accessible :connection_four, :snuh
  # attr_accessible :title, :body
  belongs_to :connection_four
  has_one :connection_two
end

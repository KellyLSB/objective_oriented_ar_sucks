class ConnectionTwo < ActiveRecord::Base
  attr_accessible :connection_three, :blah_blah
  # attr_accessible :title, :body
  belongs_to :connection_three
  has_one :connection_one
end

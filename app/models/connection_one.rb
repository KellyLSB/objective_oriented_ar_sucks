class ConnectionOne < ActiveRecord::Base
  attr_accessible :connection_two, :connection_four, :blah
  belongs_to :connection_two
  belongs_to :connection_four

  def four_with_ar
    puts "with AR"
    connection_two.connection_three.connection_four
  end

  def four_with_joins
    puts "with Joins"
    ConnectionFour.includes(connection_three: {connection_two: :connection_one}).where(connection_ones: {id: id}).first
  end

  def four_with_direct
    puts "with Direct"
    connection_four
  end
end

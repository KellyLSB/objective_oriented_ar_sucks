desc "Runs the test"
task run: :environment do
  print "Creating 5000 database records. Using active record."
  500.times do |i|
    if i % 100 == 0
      print "\n #{i}."
    else
      print '.'
    end

    con4 = ConnectionFour.create!(snew: "Snew #{i}")
    con3 = ConnectionThree.create!(snuh: "Snuh? #{i}")
    con3.connection_four = con4
    con3.save
    con2 = ConnectionTwo.create!(blah_blah: "Yup Yup #{i}")
    con2.connection_three = con3
    con2.save
    con1 = ConnectionOne.create!(blah: "Yup #{i}")
    con1.connection_two = con2
    con1.connection_four = con4
    con1.save
  end
  print "\n"

  total = ConnectionOne.count
  model = ConnectionOne.find((1..total).to_a.sample)

  ActiveRecord::Base.logger = Logger.new(STDOUT)

  puts "Starting test."

  model.four_with_ar
  model.four_with_joins
  model.four_with_direct
end

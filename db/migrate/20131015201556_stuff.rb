class Stuff < ActiveRecord::Migration
  def change
    create_table :connection_ones do |t|
      t.references :connection_two
      t.references :connection_four
      t.string :blah
    end
    create_table :connection_twos do |t|
      t.references :connection_three
      t.string :blah_blah
    end
    create_table :connection_threes do |t|
      t.references :connection_four
      t.string :snuh
    end
    create_table :connection_fours do |t|
      t.string :snew
    end
  end
end

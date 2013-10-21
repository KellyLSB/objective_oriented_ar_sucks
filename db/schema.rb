# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131015201556) do

  create_table "connection_fours", :force => true do |t|
    t.string "snew"
  end

  create_table "connection_ones", :force => true do |t|
    t.integer "connection_two_id"
    t.integer "connection_four_id"
    t.string  "blah"
  end

  create_table "connection_threes", :force => true do |t|
    t.integer "connection_four_id"
    t.string  "snuh"
  end

  create_table "connection_twos", :force => true do |t|
    t.integer "connection_three_id"
    t.string  "blah_blah"
  end

end

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

ActiveRecord::Schema.define(:version => 20130427181815) do

  create_table "authors", :force => true do |t|
    t.string   "nome"
    t.string   "link"
    t.string   "nivel"
    t.text     "bio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "email"
    t.string   "sexo"
    t.integer  "idea_id"
  end

  add_index "authors", ["idea_id"], :name => "index_authors_on_idea_id"

  create_table "events", :force => true do |t|
    t.string   "city"
    t.date     "data"
    t.string   "country"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "ideas", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.string   "link"
    t.string   "keywords"
    t.string   "repositorio"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "event_id"
  end

  add_index "ideas", ["event_id"], :name => "index_ideas_on_event_id"

  create_table "ideia", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.string   "link"
    t.string   "keywords"
    t.string   "repositorio"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end

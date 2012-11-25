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

ActiveRecord::Schema.define(:version => 20121110083322) do

  create_table "abilities", :force => true do |t|
    t.string "name"
  end

  create_table "activities", :force => true do |t|
    t.string "content"
    t.date   "date"
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "member_abilities", :force => true do |t|
    t.integer "member_id"
    t.integer "ability_id"
    t.integer "score"
    t.text    "comment"
  end

  add_index "member_abilities", ["ability_id"], :name => "index_member_abilities_on_ability_id"
  add_index "member_abilities", ["member_id"], :name => "index_member_abilities_on_member_id"

  create_table "members", :force => true do |t|
    t.string   "name"
    t.date     "since"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "members", ["email"], :name => "index_members_on_email", :unique => true
  add_index "members", ["reset_password_token"], :name => "index_members_on_reset_password_token", :unique => true

  create_table "project_activities", :force => true do |t|
    t.integer "project_id"
    t.integer "activity_id"
    t.integer "mebmer_id"
    t.integer "task_id"
  end

  add_index "project_activities", ["activity_id"], :name => "index_project_activities_on_activity_id"
  add_index "project_activities", ["mebmer_id"], :name => "index_project_activities_on_mebmer_id"
  add_index "project_activities", ["project_id"], :name => "index_project_activities_on_project_id"
  add_index "project_activities", ["task_id"], :name => "index_project_activities_on_task_id"

  create_table "project_articles", :force => true do |t|
    t.integer "project_id"
    t.integer "article_id"
  end

  add_index "project_articles", ["article_id"], :name => "index_project_articles_on_article_id"
  add_index "project_articles", ["project_id"], :name => "index_project_articles_on_project_id"

  create_table "project_members", :force => true do |t|
    t.integer "project_id"
    t.integer "member_id"
    t.date    "since"
  end

  add_index "project_members", ["member_id"], :name => "index_project_members_on_member_id"
  add_index "project_members", ["project_id"], :name => "index_project_members_on_project_id"

  create_table "project_tasks", :force => true do |t|
    t.integer "project_id"
    t.integer "task_id"
  end

  add_index "project_tasks", ["project_id"], :name => "index_project_tasks_on_project_id"
  add_index "project_tasks", ["task_id"], :name => "index_project_tasks_on_task_id"

  create_table "project_vacancies", :force => true do |t|
    t.integer "project_id"
    t.integer "vacancy_id"
  end

  add_index "project_vacancies", ["project_id"], :name => "index_project_vacancies_on_project_id"
  add_index "project_vacancies", ["vacancy_id"], :name => "index_project_vacancies_on_vacancy_id"

  create_table "projects", :force => true do |t|
    t.string "name"
    t.string "permalink"
    t.date   "created_at"
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "parent_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "tasks", ["parent_id"], :name => "index_tasks_on_parent_id"

  create_table "vacancies", :force => true do |t|
    t.string  "title"
    t.text    "content"
    t.boolean "open"
    t.date    "created_at"
  end

  create_table "vacancy_abilities", :force => true do |t|
    t.integer "vacancy_id"
    t.integer "ability_id"
  end

  add_index "vacancy_abilities", ["ability_id"], :name => "index_vacancy_abilities_on_ability_id"
  add_index "vacancy_abilities", ["vacancy_id"], :name => "index_vacancy_abilities_on_vacancy_id"

end

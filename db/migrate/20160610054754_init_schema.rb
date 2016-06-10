class InitSchema < ActiveRecord::Migration
  def up
    
    create_table "categories", force: :cascade do |t|
      t.string   "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
    
    create_table "employers", force: :cascade do |t|
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
    
    create_table "jobs", force: :cascade do |t|
      t.string   "title"
      t.text     "description"
      t.integer  "user_id"
      t.integer  "wage"
      t.datetime "created_at",  null: false
      t.datetime "updated_at",  null: false
      t.integer  "category_id"
    end
    
    add_index "jobs", ["category_id"], name: "index_jobs_on_category_id"
    add_index "jobs", ["user_id"], name: "index_jobs_on_user_id"
    
    create_table "users", force: :cascade do |t|
      t.string   "email",                  default: "", null: false
      t.string   "encrypted_password",     default: "", null: false
      t.string   "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.integer  "sign_in_count",          default: 0,  null: false
      t.datetime "current_sign_in_at"
      t.datetime "last_sign_in_at"
      t.string   "current_sign_in_ip"
      t.string   "last_sign_in_ip"
      t.datetime "created_at",                          null: false
      t.datetime "updated_at",                          null: false
      t.string   "username"
      t.integer  "role"
      t.string   "type"
      t.string   "confirmation_token"
      t.datetime "confirmed_at"
      t.datetime "confirmation_sent_at"
      t.string   "unconfirmed_email"
    end
    
    add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    add_index "users", ["email"], name: "index_users_on_email", unique: true
    add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    
  end

  def down
    raise "Can not revert initial migration"
  end
end

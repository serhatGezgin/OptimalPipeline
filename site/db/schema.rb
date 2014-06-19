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

ActiveRecord::Schema.define(:version => 20120628011936) do

  create_table "contacts", :force => true do |t|
    t.boolean  "is_demo",      :default => false
    t.string   "name"
    t.string   "title"
    t.string   "email"
    t.string   "phone"
    t.string   "company"
    t.string   "company_url"
    t.text     "other_fields"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["id"], :name => "index_contacts_on_id"

  create_table "images", :force => true do |t|
    t.string    "image_mime_type"
    t.string    "image_name"
    t.integer   "image_size"
    t.integer   "image_width"
    t.integer   "image_height"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "image_uid"
    t.string    "image_ext"
  end

  create_table "libraries", :force => true do |t|
    t.string  "name"
    t.string  "short_desc"
    t.boolean "public"
    t.integer "position"
  end

  add_index "libraries", ["id"], :name => "index_libraries_on_id"
  add_index "libraries", ["public"], :name => "index_libraries_on_public"

  create_table "library_resources", :force => true do |t|
    t.integer "library_id"
    t.integer "resource_id"
    t.string  "description"
    t.integer "position",    :default => 0
  end

  add_index "library_resources", ["id"], :name => "index_library_resources_on_id"
  add_index "library_resources", ["library_id", "resource_id"], :name => "index_library_resources_on_library_id_and_resource_id"
  add_index "library_resources", ["position"], :name => "index_library_resources_on_position"

  create_table "page_part_translations", :force => true do |t|
    t.integer   "page_part_id"
    t.string    "locale"
    t.text      "body"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "page_part_translations", ["page_part_id"], :name => "index_page_part_translations_on_page_part_id"

  create_table "page_parts", :force => true do |t|
    t.integer   "page_id"
    t.string    "title"
    t.text      "body"
    t.integer   "position"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "page_parts", ["id"], :name => "index_page_parts_on_id"
  add_index "page_parts", ["page_id"], :name => "index_page_parts_on_page_id"

  create_table "page_translations", :force => true do |t|
    t.integer   "page_id"
    t.string    "locale"
    t.string    "title"
    t.string    "custom_title"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "page_translations", ["page_id"], :name => "index_page_translations_on_page_id"

  create_table "pages", :force => true do |t|
    t.integer   "parent_id"
    t.integer   "position"
    t.string    "path"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.boolean   "show_in_menu",        :default => true
    t.string    "link_url"
    t.string    "menu_match"
    t.boolean   "deletable",           :default => true
    t.string    "custom_title_type",   :default => "none"
    t.boolean   "draft",               :default => false
    t.boolean   "skip_to_first_child", :default => false
    t.integer   "lft"
    t.integer   "rgt"
    t.integer   "depth"
  end

  add_index "pages", ["depth"], :name => "index_pages_on_depth"
  add_index "pages", ["id"], :name => "index_pages_on_id"
  add_index "pages", ["lft"], :name => "index_pages_on_lft"
  add_index "pages", ["parent_id"], :name => "index_pages_on_parent_id"
  add_index "pages", ["rgt"], :name => "index_pages_on_rgt"

  create_table "refinery_settings", :force => true do |t|
    t.string    "name"
    t.text      "value"
    t.boolean   "destroyable",             :default => true
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "scoping"
    t.boolean   "restricted",              :default => false
    t.string    "callback_proc_as_string"
    t.string    "form_value_type"
  end

  add_index "refinery_settings", ["name"], :name => "index_refinery_settings_on_name"

  create_table "resources", :force => true do |t|
    t.string    "file_mime_type"
    t.string    "file_name"
    t.integer   "file_size"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "file_uid"
    t.string    "file_ext"
  end

  create_table "roles", :force => true do |t|
    t.string "title"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "roles_users", ["role_id", "user_id"], :name => "index_roles_users_on_role_id_and_user_id"
  add_index "roles_users", ["user_id", "role_id"], :name => "index_roles_users_on_user_id_and_role_id"

  create_table "seo_meta", :force => true do |t|
    t.integer   "seo_meta_id"
    t.string    "seo_meta_type"
    t.string    "browser_title"
    t.string    "meta_keywords"
    t.text      "meta_description"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "seo_meta", ["id"], :name => "index_seo_meta_on_id"
  add_index "seo_meta", ["seo_meta_id", "seo_meta_type"], :name => "index_seo_meta_on_seo_meta_id_and_seo_meta_type"

  create_table "slugs", :force => true do |t|
    t.string    "name"
    t.integer   "sluggable_id"
    t.integer   "sequence",                     :default => 1, :null => false
    t.string    "sluggable_type", :limit => 40
    t.string    "scope",          :limit => 40
    t.timestamp "created_at"
    t.string    "locale"
  end

  add_index "slugs", ["locale"], :name => "index_slugs_on_locale"
  add_index "slugs", ["name", "sluggable_type", "scope", "sequence"], :name => "index_slugs_on_n_s_s_and_s", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

  create_table "user_plugins", :force => true do |t|
    t.integer "user_id"
    t.string  "name"
    t.integer "position"
  end

  add_index "user_plugins", ["name"], :name => "index_user_plugins_on_title"
  add_index "user_plugins", ["user_id", "name"], :name => "index_unique_user_plugins", :unique => true

  create_table "users", :force => true do |t|
    t.string    "username",             :null => false
    t.string    "email",                :null => false
    t.string    "encrypted_password",   :null => false
    t.string    "persistence_token"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "perishable_token"
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.integer   "sign_in_count"
    t.string    "remember_token"
    t.string    "reset_password_token"
    t.timestamp "remember_created_at"
  end

  add_index "users", ["id"], :name => "index_users_on_id"

end
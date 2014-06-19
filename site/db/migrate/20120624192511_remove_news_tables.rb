class RemoveNewsTables < ActiveRecord::Migration
  def self.up
    drop_table "news_item_translations"
    drop_table "news_items"
  end

  def self.down
    create_table "news_item_translations", :force => true do |t|
      t.integer  "news_item_id"
      t.string   "locale"
      t.text     "body"
      t.string   "external_url"
      t.string   "title"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "news_item_translations", ["news_item_id"], :name => "index_news_item_translations_on_news_item_id"

    create_table "news_items", :force => true do |t|
      t.string   "title"
      t.text     "body"
      t.datetime "publish_date"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "image_id"
      t.datetime "expiration_date"
    end

    add_index "news_items", ["id"], :name => "index_news_items_on_id"
  end
end

class CreateContacts < ActiveRecord::Migration

  def self.up
    create_table :contacts do |t|
      t.boolean :is_demo, :default => false
      t.string :name
      t.string :title
      t.string :email
      t.string :phone
      t.string :company
      t.string :company_url
      t.text :other_fields
      t.string :dio_status
      t.string :dio_message
      t.string :dio_signature
      t.boolean :dio_allow
      t.string :dio_classification
      t.float :dio_spaminess
      t.boolean :"dio_profanity-match"
      t.integer :position
      t.timestamps
    end

    add_index :contacts, :id

    load(Rails.root.join('db', 'seeds', 'contacts.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "contacts"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/contacts"})
    end

    drop_table :contacts
  end

end

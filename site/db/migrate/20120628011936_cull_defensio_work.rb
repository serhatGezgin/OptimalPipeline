class CullDefensioWork < ActiveRecord::Migration
  def self.up
    remove_column :contacts, :dio_status
    remove_column :contacts, :dio_message
    remove_column :contacts, :dio_signature
    remove_column :contacts, :dio_allow
    remove_column :contacts, :dio_classification
    remove_column :contacts, :dio_spaminess
    remove_column :contacts, :"dio_profanity-match"
  end

  def self.down
    add_column :contacts, :dio_status, :string
    add_column :contacts, :dio_message, :string
    add_column :contacts, :dio_signature, :string
    add_column :contacts, :dio_allow, :boolean
    add_column :contacts, :dio_classification, :string
    add_column :contacts, :dio_spaminess, :float
    add_column :contacts, :"dio_profanity-match", :boolean
  end
end

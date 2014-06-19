class AddDescriptionToLibResources < ActiveRecord::Migration

  def self.up
    add_column :library_resources, :description, :string
  end

  def self.down
    remove_column :library_resources, :description
  end

end
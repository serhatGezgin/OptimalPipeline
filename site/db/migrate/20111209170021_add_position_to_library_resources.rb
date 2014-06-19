class AddPositionToLibraryResources < ActiveRecord::Migration

  def self.up
    add_column :library_resources, :position, :integer, :default => 0
    add_index :library_resources, :position
  end

  def self.down
    remove_index :library_resources, :position
    remove_column :library_resources, :position
  end

end
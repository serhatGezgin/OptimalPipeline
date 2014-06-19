class AddPositionToLibraryResources < ActiveRecord::Migration

  def self.up
    add_column :library_resources, :position, :integer
  end

  def self.down
    remove_column :library_resources, :position
  end

end
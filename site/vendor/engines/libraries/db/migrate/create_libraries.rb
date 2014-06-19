class CreateLibraries < ActiveRecord::Migration

  def self.up
    create_table :libraries do |t|
      t.string :name
      t.string :short_desc
      t.boolean :public
      t.integer :position
    end

    add_index :libraries, :id
    add_index :libraries, :public
    
    create_table :library_resources do |t|
      t.integer :library_id
      t.integer :resource_id
    end
    
    add_index :library_resources, :id
    add_index :library_resources, [:library_id, :resource_id]
    
    load(Rails.root.join('db', 'seeds', 'libraries.rb'))
  end

  def self.down
    if defined?(UserPlugin)
      UserPlugin.destroy_all({:name => "libraries"})
    end

    if defined?(Page)
      Page.delete_all({:link_url => "/libraries"})
    end

    drop_table :libraries
    drop_table :library_resources
  end

end

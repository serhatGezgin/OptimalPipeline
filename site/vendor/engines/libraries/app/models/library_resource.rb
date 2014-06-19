class LibraryResource < ActiveRecord::Base
  
  belongs_to :library
  belongs_to :resource
  
  validates_uniqueness_of :resource_id, :scope => :library_id
  
  after_create :update_position
  
  default_scope :order => "position ASC"
  
  private
  
    def update_position
      update_attribute(:position, (LibraryResource.maximum("position") || 0) + 1)
    end
  
end

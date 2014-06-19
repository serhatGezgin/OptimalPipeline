class Library < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :short_desc]
  
  has_friendly_id :name, :use_slug => true

  validates :name, :presence => true, :uniqueness => true
  
  has_many :library_resources, :dependent => :destroy
  has_many :resources, :through => :library_resources
  
  scope :public, :conditions => ["public = ?", true], :order => "position ASC"
  
end

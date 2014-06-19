class LibraryResourceObserver < ActiveRecord::Observer
  observe :resource
  
  def after_destroy(record)
    LibraryResource.find(:all, :conditions => ["resource_id = ?", record.id]).each { |x| x.destroy }
  end
end

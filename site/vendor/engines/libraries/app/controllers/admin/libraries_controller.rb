module Admin
  class LibrariesController < Admin::BaseController

    crudify :library,
            :title_attribute => 'name', :xhr_paging => true
    
    before_filter :get_library, :only => [:resources, :new_resource, :add_resource, :rem_resource]

    def resources      
    end
    
    def new_resource
      @avail_resources = Resource.all - @library.resources
    end
    
    def add_resource
      res = @library.library_resources.build(params[:res])
      if res.save
        flash[:notice] = "Resource added."
        redirect_to resources_admin_library_path(@library)
      else
        flash[:error] = "Problem adding resource!"
        render :new_resource
      end
    end
    
    def rem_resource
      @library.library_resources.find(params[:res_id]).destroy
      flash[:notice] = "Resource removed."
      redirect_to :back
    end
    
    def reorder_resources
      params[:ul].each do |pos, list|
        list.each do |index, hash|
          moved_item_id = hash.split(/resource\_?/)[1]
          @current_resource = LibraryResource.find_by_id(moved_item_id)
          @current_resource.update_attribute(:position, pos.to_i)
        end
      end
      render :nothing => true
    end
    
    protected
    
      def get_library
        @library = Library.find(params[:id])
      end
    
  end
end

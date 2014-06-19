class LibrariesController < ApplicationController

  before_filter :find_all_libraries
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @library in the line below:
    present(@page)
  end

  def show
    @library = Library.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @library in the line below:
    present(@page)
  end

protected

  def find_all_libraries
    @libraries = Library.public(:include => :library_resources)
  end

  def find_page
    @page = Page.where(:link_url => "/libraries").first
  end

end

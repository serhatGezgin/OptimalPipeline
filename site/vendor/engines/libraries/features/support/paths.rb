module NavigationHelpers
  module Refinery
    module Libraries
      def path_to(page_name)
        case page_name
        when /the list of libraries/
          admin_libraries_path

         when /the new library form/
          new_admin_library_path
        else
          nil
        end
      end
    end
  end
end

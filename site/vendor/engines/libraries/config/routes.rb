::Refinery::Application.routes.draw do
  resources :libraries, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :libraries do
      member do
        get    :resources
        get    :new_resource
        post   :add_resource
        post   :reorder_resources
        delete :rem_resource
      end
      collection do
        post :update_positions
      end
    end
  end
  
end

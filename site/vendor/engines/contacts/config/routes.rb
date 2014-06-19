::Refinery::Application.routes.draw do
  match "contact"          => "contacts#index",  :via => :get
  match "contact/demo"     => "contacts#demo",   :via => :get
  match "contact/submit"   => "contacts#submit", :via => :post
  match "contact/thankyou" => "contacts#thanks", :via => :get

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :contacts
  end
end

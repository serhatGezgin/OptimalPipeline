Opsite::Application.routes.draw do  
  # Overrides for very specific menu arrangements
  match "news/events"                => "pages#show", :id => "events"
  match "libraries/technical-papers" => "pages#show", :id => "technical-papers"
  match "libraries/links"            => "pages#show", :id => "links"
end

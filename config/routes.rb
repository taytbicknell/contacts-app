Rails.application.routes.draw do

  namespace :api do
    get "/single_contact_url" => "/contacts#single_contact_method"

    get "/contacts" => "contacts#index"
    get "/contacts/:id" => "contacts#show"
    post "/contacts" => "contacts#create"
    patch "/contacts/:id" => "contacts#update"
    delete "/contacts/:id" => "contacts#destroy"
  end
end
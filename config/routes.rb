Rails.application.routes.draw do
  namespace :api do
    get "/burgers" => "burgers#index"
    get "/burgers/:id" => "burgers#show"
    post "/burgers" => "burgers#create"
    patch "/burgers/:id" => "burgers#update"
    delete "/burgers/:id" => "burgers#destroy"
  end
end

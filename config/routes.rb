Rails.application.routes.draw do
  namespace :api do
    get "/burgers" => "burgers#index"
    get "/burgers/:id" => "burgers#show"
  end
end

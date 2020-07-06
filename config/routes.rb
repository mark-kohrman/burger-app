Rails.application.routes.draw do
  namespace :api do
    get "/burgers" => "burgers#index"
  end
end

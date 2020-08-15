Rails.application.routes.draw do

  namespace :api do
    get "/blog_posts" => "blog_posts#index"
    post "/blog_posts" => "blog_posts#create"
    get "/blog_posts/:id" => "blog_posts#show"
    patch "/blog_posts/:id" => "blog_posts#update"
    delete "/blog_posts/:id" => "blog_posts#destroy"

    get "/portfolio_projects" => "portfolio_projects#index"
    post "/portfolio_projects" => "portfolio_projects#create"
    get "/portfolio_projects/:id" => "portfolio_projects#show"
    patch "/portfolio_projects/:id" => "portfolio_projects#update"
    delete "/portfolio_projects/:id" => "portfolio_projects#destroy"

    get "/tags" => "tags#index"
    post "/tags" => "tags#create"
    get "/tags/:id" => "tags#show"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"
  end

end

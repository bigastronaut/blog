Blog::Engine.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root to:  "posts#index"
  get "/page/:page", to:  "posts#index", as:  "posts_page"
  get "/feed" => "posts#feed", as:  "feed", defaults: {format: :rss}
  get "/tags/:tag" =>"tags#show", as: "tags_page"

  namespace :admin do
    resources :posts
    get "comments" => "comments#show", as: "comments"
    match "/post/preview"=>"posts#preview", :as=>"post_preview", :via => [:put, :post]
  end

  get "*post_url" => "posts#show", as:  "post"
end

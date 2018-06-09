Rails.application.routes.draw do
  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  

  devise_for :users, path: 'users'
  resources :users, only: [:show]
  
  resources :shops do
    resources :products
  end

  resources :shops do
    resources :products do
      resources :orders
    end
  end

  resources :shops do
    resources :articles
  end

  resources :shops do
    resources :categories
  end

  resources :settings



  root 'staticpages#landingpage'
  get :search, :controller => 'main'

  get '/dashboard' => 'dashboard#index'
  get '/dashboard/orders' => 'dashboard#orders'
  get '/dashboard/products' => 'dashboard#products'
  get '/dashboard/statistics' => 'dashboard#statistics'
  get '/dashboard/themes' => 'dashboard#themes'
  get '/dashboard/deals' => 'dashboard#deals'
  get '/dashboard/categories' => 'dashboard#categories'
  get '/dashboard/articles' => 'dashboard#articles'
  match 'dashboard/preferences' => 'dashboard#preferences', via: [:get,:patch]

  get '/dashboard_orders' => 'users#dashboard_orders'
  get '/terms_and_conditions' => 'staticpages#terms_and_conditions'
  get '/about' => 'staticpages#about'
  get '/pricing' => 'staticpages#pricing'
  get '/thankyou' => 'staticpages#thankyou'
  get '/catalog' => "shops#catalog"
  get '/contact' => "staticpages#contact"
  get '/faq' => "staticpages#faq"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

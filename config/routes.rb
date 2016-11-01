Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  #devise_for :users#, :skip => [:sessions]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/v1' do
    scope 'historical' do
      get '/' => 'historical#get'
      post '/' => 'historical#post'
    end
  end
end

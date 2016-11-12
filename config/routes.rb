Rails.application.routes.draw do
  scope '/v1' do
    scope 'historical' do
      get '/' => 'historical#get'
      post '/' => 'historical#post'
    end
  end
end

BrainDump::Application.routes.draw do
  root to: 'Todos#index'
  resources :users
  resources :todos
end

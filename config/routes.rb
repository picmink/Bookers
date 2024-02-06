Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get '' => 'books#top'
    get 'books' => 'books#index'
    post 'books' => 'books#create'
    get 'books/:id' => 'books#show'
    get 'books/:id/edit' => 'books#edit' ,as: 'edit_e'
    patch 'books/:id/edit' => 'books#update', as: 'update_up'
    delete 'books/:id' => 'books#destroy', as: 'destroy_d'
end

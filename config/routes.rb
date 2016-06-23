Rails.application.routes.draw do
  root 'static_pages#homepage'

  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'services' => 'static_pages#services'
  get 'portfolio' => 'static_pages#portfolio'

end

Sap4::Application.routes.draw do
  get "static_pages/home"

  get "static_pages/help"
  get "static_pages/about"

  match '/home' => 'static_pages#home'
end

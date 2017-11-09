Rails.application.routes.draw do
  get 'job_application/new'

  get 'job_application/edit'

  get 'job_application/delete'
  get 'welcome/homepage'
  root 'welcome#homepage'
 # root 'job_application#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get "new" => "job_application#new", as: :new
  get "about" => "welcome#about", as: :about
  get "blog" => "welcome#blog", as: :blog
  get "contact" => "welcome#contact", as: :contact
 
end

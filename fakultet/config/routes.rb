Rails.application.routes.draw do
  resources :confirmations
  resources :exam_applications
  resources :exams
  resources :subjects
  resources :results
  resources :job_applications
     resources :job_advertisements
match 'active'  => 'sessions#active',  via: :get
match 'timeout' => 'sessions#timeout', via: :get
get 'sessions/new'

  resources :users

  get 'welcome/homepage'
  root 'welcome#homepage'
 # root 'job_application#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get 'login', to:'sessions#new'
  get 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'


  resources :confirmations do
  get :download_resume
  end
get "skini" => "confirmations#download_resume", as: :skini
get "nesto" => "confirmations#index", as: :nesto
get 'download', to: 'confirmations#index'

  get "about" => "welcome#about", as: :about
  get "blog" => "welcome#blog", as: :blog
  get "contact" => "welcome#contact", as: :contact
   get "/new/:id" => "job_applications#new", as: :newapp
   get "/newuser/:id" => "users#new", as: :newuser
   get "showapp{:id}" => "job_applications#show", as: :showapp
   get "editapp{:id}" => "job_applications#edit", as: :editapp
   get "new_advertisement"=>"job_advertisements#new", as: :new_advertisement
   get "editjobadvertisement{:id}",to: 'job_advertisements#edit' ,as: :editjobadvertisement
   get ":id", to: 'job_advertisements#show', as: :showjob
   get "show_result{:id}" => "results#show", as: :show_result
   #get "show_result{:id}" => "results#show", as: :show_result
   get "show_exam{:id}" => "exams#show", as: :show_exam
   get "/apply_exam_application/:id" => "exam_applications#new", as: :apply_exam_application
  get "/showexam/:id/" => "exam_applications#show", as: :showexam







end

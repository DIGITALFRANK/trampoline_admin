Rails.application.routes.draw do
  namespace :dashboard do
    get 'dashboard/index'
  end
  # devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :admins
  # resources :instructors
  # resources :students
  # resources :instructor_applicants
  # resources :student_applicants
  # resources :users

  # resources
  resources :courses
  resources :cohorts
  resources :applications


  # Devise for users
  devise_for :admins
  devise_for :instructors
  devise_for :students
  devise_for :instructor_applicants
  devise_for :student_applicants


  # index & show for users
  get '/admins', to: 'admins#index'
  get '/admins/:id/show', to: 'admins#show'

  get '/instructors', to: 'instructors#index'
  get '/instructors/:id/show', to: 'instructors#show'

  get '/students', to: 'students#index'
  get '/students/:id/show', to: 'students#show'
  
  get '/instructor_applicants', to: 'instructor_applicants#index'
  get '/instructor_applicants/:id/show', to: 'instructor_applicants#show'

  get '/student_applicants', to: 'student_applicants#index'
  get '/student_applicants/:id/show', to: 'student_applicants#show'




  ###### old routes set up for dashboard
  # get '/admins/:id/dashboard', to: 'admins#dashboard'
  # get '/instructors/:id/dashboard', to: 'instructors#dashboard'
  # get '/students/:id/dashboard', to: 'students#dashboard'




  ##### old routes set up for applications - configure this when working on the applications part
  # get '/applications/instructors/:id', to: 'applications#instructor'
  # get '/applications/students/:id', to: 'applications#student'


  root 'users#login'




 ### we could add root to: "dashboard#index" within the dashboard namespace
  namespace :dashboard do
    root to: "dashboard#index"
  end


  
  # dashboard routes W/ user restrictions
  #### BEST ROUTE - or we can run everythng through the dashboard namespace, with restrictions applied by user type
  namespace :dashboard do
    authenticated :admin do
      resources :admins, module: "admin"
      resources :instructors, module: "admin"
      resources :students, module: "admin"
      resources :instructor_applicants, module: "admin"
      resources :student_applicants, module: "admin"
      resources :users, module: "admin"
      resources :courses, module: "admin"
      resources :cohorts, module: "admin"
      resources :applications, module: "admin"
    end
    authenticated :instructor do
      resources :courses, module: "instructor", :only => [:show, :index]
      resources :cohorts, module: "instructor", :only => [:show, :index]
      resources :admins, module: "instructor", :only => [:show, :index]
      resources :students, module: "instructor", :only => [:show, :index]
    end
    authenticated :student do
      resources :courses, module: "student", :only => [:show, :index]
      resources :cohorts, module: "student", :only => [:show, :index]
      resources :admins, module: "student", :only => [:show, :index]
      resources :instructors, module: "student", :only => [:show, :index]
    end
    authenticated :instructor_applicant do
      resources :applications, module: "instructor_applicant", :only => [:show, :new, :create, :edit, :update, :destroy]
    end
    authenticated :student_applicant do
      resources :applications, module: "student_applicant", :only => [:show, :new, :create, :edit, :update, :destroy]
    end
    root to: "dashboard#index"
  end





end

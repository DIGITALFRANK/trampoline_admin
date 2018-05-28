Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # landing page
  root 'users#login'



  # ##### Devise for users
  # # devise_for :users, controllers: {
  # #     sessions: 'users/sessions',
  # #     registrations: 'users/registrations'
  # # }
  # devise_for :admins, skip: [:registrations], controllers: {
  #     sessions: 'admins/sessions',
  #     # registrations: 'admins/registrations'
  # }
  # devise_for :instructors, skip: [:registrations], controllers: {
  #     sessions: 'instructors/sessions',
  #     # registrations: 'instructors/registrations'
  # }
  # devise_for :students, skip: [:registrations], controllers: {
  #     sessions: 'students/sessions',
  #     # registrations: 'students/registrations'
  # }




  devise_for :admins, skip: [:registrations]
  devise_for :instructors, skip: [:registrations]
  devise_for :students, skip: [:registrations]
  devise_for :instructor_applicants
  devise_for :student_applicants




  # resources
  resources :courses
  resources :cohorts
  resources :applications

  # user resources
  resources :admins
  resources :instructors
  resources :students
  resources :instructor_applicants
  resources :student_applicants

  # dashboard
  namespace :dashboard do
    root to: "dashboard#index"
  end
































  ##### don't need these if Devise is in action?  let me know
  # user type resources
  # resources :admins
  # resources :instructors
  # resources :students
  # resources :instructor_applicants
  # resources :student_applicants
  # resources :users





  ##### old routes set up for applications - configure this when working on the applications part
  # get '/applications/instructors/:id', to: 'applications#instructor'
  # get '/applications/students/:id', to: 'applications#student'
  
  



  ##### old index & show routes for users
  # get '/instructors', to: 'instructors#index'
  # get '/instructors/:id/show', to: 'instructors#show'

  # get '/students', to: 'students#index'
  # get '/students/:id/show', to: 'students#show'
  
  # get '/instructor_applicants', to: 'instructor_applicants#index'
  # get '/instructor_applicants/:id/show', to: 'instructor_applicants#show'

  # get '/student_applicants', to: 'student_applicants#index'
  # get '/student_applicants/:id/show', to: 'student_applicants#show'




  ##### old routes set up for dashboard
  # get '/admins/:id/dashboard', to: 'admins#dashboard'
  # get '/instructors/:id/dashboard', to: 'instructors#dashboard'
  # get '/students/:id/dashboard', to: 'students#dashboard'


  ##### dashboard routes W/ user restrictions
  #   #### may be BEST ROUTE - or we can run everythng through the dashboard namespace, with restrictions applied by user type
  #   namespace :dashboard do
  #     authenticated :admin do
  #       resources :admins, module: "admin"
  #       resources :instructors, module: "admin"
  #       resources :students, module: "admin"
  #       resources :instructor_applicants, module: "admin"
  #       resources :student_applicants, module: "admin"
  #       resources :users, module: "admin"
  #       resources :courses, module: "admin"
  #       resources :cohorts, module: "admin"
  #       resources :applications, module: "admin"
  #     end
  #     authenticated :instructor do
  #       resources :courses, module: "instructor", :only => [:show, :index]
  #       resources :cohorts, module: "instructor", :only => [:show, :index]
  #       resources :admins, module: "instructor", :only => [:show, :index]
  #       resources :students, module: "instructor", :only => [:show, :index]
  #     end
  #     authenticated :student do
  #       resources :courses, module: "student", :only => [:show, :index]
  #       resources :cohorts, module: "student", :only => [:show, :index]
  #       resources :admins, module: "student", :only => [:show, :index]
  #       resources :instructors, module: "student", :only => [:show, :index]
  #     end
  #     authenticated :instructor_applicant do
  #       resources :applications, module: "instructor_applicant", :only => [:show, :new, :create, :edit, :update, :destroy]
  #     end
  #     authenticated :student_applicant do
  #       resources :applications, module: "student_applicant", :only => [:show, :new, :create, :edit, :update, :destroy]
  #     end
  #     root to: "dashboard#index"
  #   end




  ##### handwritten CRUD routes users

  # Admins
  # get '/admins/new', to: 'admins#new'
  # post '/admins', to: 'admins#create'
  # get '/admins', to: 'admins#index'
  # get '/admins/:id', to: 'admins#show'

  # get '/admins/edit' to: 'devise/registrations#edit'
  # put '/admins/' to: 'devise/registrations#update'

  # get '/admins/:id/edit', to: 'admins#edit'
  # put '/admins/:id', to: 'admins#update'
  # delete '/admins/:id', to: 'admins#destroy'



  # Instructors
  # get '/instructors/new', to: 'instructors#new'
  # post '/instructors', to: 'instructors#create'
  # get '/instructors', to: 'instructors#index'
  # get '/instructors/:id', to: 'instructors#show'

  # get '/instructors/edit' to: 'devise/registrations#edit'
  # put '/instructors/' to: 'devise/registrations#update'

  # get '/instructors/:id/edit', to: 'instructors#edit'
  # put '/instructors/:id', to: 'instructors#update'
  # delete '/instructors/:id', to: 'instructors#destroy'



  # Students
  # get '/students/new', to: 'students#new'
  # post '/students', to: 'students#create'
  # get '/students', to: 'students#index'
  # get '/students/:id', to: 'students#show'

  # get '/students/edit' to: 'devise/registrations#edit'
  # put '/students/' to: 'devise/registrations#update'

  # get '/students/:id/edit', to: 'students#edit'
  # put '/students/:id', to: 'students#update'
  # delete '/students/:id', to: 'students#destroy'



  # Instructor_applicants
  # get '/instructor_applicants/new', to: 'instructor_applicants#new'
  # post '/instructor_applicants', to: 'instructor_applicants#create'
  # get '/instructor_applicants', to: 'instructor_applicants#index'
  # get '/instructor_applicants/:id', to: 'instructor_applicants#show'

  # get '/instructor_applicants/edit' to: 'devise/registrations#edit'
  # put '/instructor_applicants/' to: 'devise/registrations#update'

  # get '/instructor_applicants/:id/edit', to: 'instructor_applicants#edit'
  # put '/instructor_applicants/:id', to: 'instructor_applicants#update'
  # delete '/instructor_applicants/:id', to: 'instructor_applicants#destroy'



  # Student_applicants
  # get '/student_applicants/new', to: 'student_applicants#new'
  # post '/student_applicants', to: 'student_applicants#create'
  # get '/student_applicants', to: 'student_applicants#index'
  # get '/student_applicants/:id', to: 'student_applicants#show'

  # get '/student_applicants/edit' to: 'devise/registrations#edit'
  # put '/student_applicants/' to: 'devise/registrations#update'

  # get '/student_applicants/:id/edit', to: 'student_applicants#edit'
  # put '/student_applicants/:id', to: 'student_applicants#update'
  # delete '/student_applicants/:id', to: 'instructor_applicants#destroy'


end

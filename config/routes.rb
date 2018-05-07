Rails.application.routes.draw do
  # get 'applications/index'
  # get 'applications/create'
  # get 'applications/new'
  # get 'applications/show'
  # get 'applications/edit'
  # get 'applications/destroy'
  # get 'cohorts/index'
  # get 'cohorts/create'
  # get 'cohorts/new'
  # get 'cohorts/show'
  # get 'cohorts/edit'
  # get 'cohorts/destroy'
  # get 'courses/index'
  # get 'courses/create'
  # get 'courses/new'
  # get 'courses/show'
  # get 'courses/edit'
  # get 'courses/destroy'
  # get 'student_applicants/index'
  # get 'student_applicants/create'
  # get 'student_applicants/new'
  # get 'student_applicants/show'
  # get 'student_applicants/edit'
  # get 'student_applicants/destroy'
  # get 'instructor_applicants/index'
  # get 'instructor_applicants/create'
  # get 'instructor_applicants/new'
  # get 'instructor_applicants/show'
  # get 'instructor_applicants/edit'
  # get 'instructor_applicants/destroy'
  # get 'students/index'
  # get 'students/create'
  # get 'students/new'
  # get 'students/show'
  # get 'students/edit'
  # get 'students/destroy'
  # get 'instructors/index'
  # get 'instructors/create'
  # get 'instructors/new'
  # get 'instructors/show'
  # get 'instructors/edit'
  # get 'instructors/destroy'
  # get 'admins/index'
  # get 'admins/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :admins
  resources :instructors
  resources :students
  resources :instructor_applicants
  resources :student_applicants
  resources :users
  resources :courses
  resources :cohorts
  resources :applications

  get '/admins/:id/dashboard', to: 'admins#dashboard'
  get '/instructors/:id/dashboard', to: 'instructors#dashboard'
  get '/students/:id/dashboard', to: 'students#dashboard'

  get '/applications/instructors/:id', to: 'applications#instructor'
  get '/applications/students/:id', to: 'applications#student'


  root 'users#login'
  # get 'login/error' to: 'users#login_error'
  post '/login/user', to: 'users#dashboard'
end

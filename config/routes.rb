Rails.application.routes.draw do
  get 'applications/index'
  get 'applications/create'
  get 'applications/new'
  get 'applications/show'
  get 'applications/edit'
  get 'applications/destroy'
  get 'cohorts/index'
  get 'cohorts/create'
  get 'cohorts/new'
  get 'cohorts/show'
  get 'cohorts/edit'
  get 'cohorts/destroy'
  get 'courses/index'
  get 'courses/create'
  get 'courses/new'
  get 'courses/show'
  get 'courses/edit'
  get 'courses/destroy'
  get 'student_applicants/index'
  get 'student_applicants/create'
  get 'student_applicants/new'
  get 'student_applicants/show'
  get 'student_applicants/edit'
  get 'student_applicants/destroy'
  get 'instructor_applicants/index'
  get 'instructor_applicants/create'
  get 'instructor_applicants/new'
  get 'instructor_applicants/show'
  get 'instructor_applicants/edit'
  get 'instructor_applicants/destroy'
  get 'students/index'
  get 'students/create'
  get 'students/new'
  get 'students/show'
  get 'students/edit'
  get 'students/destroy'
  get 'instructors/index'
  get 'instructors/create'
  get 'instructors/new'
  get 'instructors/show'
  get 'instructors/edit'
  get 'instructors/destroy'
  get 'admins/index'
  get 'admins/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :admins
  resources :instructors
  resources :students
  resources :instructor_applicants
  resources :student_applicants
  resources :courses
  resources :cohorts
  resources :applications

  get '/dashboard/admin/:id', to: 'dashboard#admin'
  get '/dashboard/instructor/:id', to: 'dashboard#admin'
  get '/dashboard/student/:id', to: 'dashboard#admin'

  get '/application/instructor/:id', to: 'application#instructor'
  get '/application/student/:id', to: 'application#student'

  root 'users#login'
end

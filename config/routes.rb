Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # landing page
  root 'users#login'


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

end

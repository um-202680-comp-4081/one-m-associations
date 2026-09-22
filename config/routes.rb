# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get 'service-worker' => 'rails/pwa#service_worker', as: :pwa_service_worker
  get 'manifest' => 'rails/pwa#manifest', as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
  root to: redirect('/quizzes')

  get 'quizzes', to: 'quizzes#index', as: 'quizzes'
  post 'quizzes', to: 'quizzes#create'
  get 'quizzes/new', to: 'quizzes#new', as: 'new_quiz'
  get 'quizzes/:id', to: 'quizzes#show', as: 'quiz'
  get 'quizzes/:id/edit', to: 'quizzes#edit', as: 'edit_quiz'
  patch 'quizzes/:id', to: 'quizzes#update'
  delete 'quizzes/:id', to: 'quizzes#destroy'

  get 'questions', to: 'questions#index', as: 'questions'
  post 'questions', to: 'questions#create'
  get 'questions/new', to: 'questions#new', as: 'new_question'
  get 'questions/:id', to: 'questions#show', as: 'question'
  get 'questions/:id/edit', to: 'questions#edit', as: 'edit_question'
  patch 'questions/:id', to: 'questions#update'
  delete 'questions/:id', to: 'questions#destroy'
end

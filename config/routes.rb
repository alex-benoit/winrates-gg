# frozen_string_literal: true
Rails.application.routes.draw do
  root to: 'pages#home'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end

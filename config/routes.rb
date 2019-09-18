Rails.application.routes.draw do
  get 'jwhite31', to: 'pages#jwhite31', as: 'jwhite31'
  #<%= image_tag "quiz-bubble.png", height: 300 %>
  get 'review', to: 'pages#review', as: 'review'
  root to: redirect('/jwhite31', status: 302)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

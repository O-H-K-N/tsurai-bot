Rails.application.routes.draw do
  root "words#show"

  get 'words/show'
  post 'words/show'
end

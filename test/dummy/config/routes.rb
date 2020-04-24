Rails.application.routes.draw do
  resource :test, only: [:show]
end

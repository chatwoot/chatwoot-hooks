Rails.application.routes.draw do
  mount Hooks::Engine => "/hooks"
end

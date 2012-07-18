# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

Cursos::Application.routes.draw do


  # Resource routes for controller "categories"
  get 'categories(.:format)' => 'categories#index', :as => 'categories'
  get 'categories/new(.:format)', :as => 'new_category'
  get 'categories/:id/edit(.:format)' => 'categories#edit', :as => 'edit_category'
  get 'categories/:id(.:format)' => 'categories#show', :as => 'category', :constraints => { :id => %r([^/.?]+) }
  post 'categories(.:format)' => 'categories#create', :as => 'create_category'
  put 'categories/:id(.:format)' => 'categories#update', :as => 'update_category', :constraints => { :id => %r([^/.?]+) }
  delete 'categories/:id(.:format)' => 'categories#destroy', :as => 'destroy_category', :constraints => { :id => %r([^/.?]+) }


  # Lifecycle routes for controller "users"
  put 'users/:id/accept_invitation(.:format)' => 'users#do_accept_invitation', :as => 'do_user_accept_invitation'
  get 'users/:id/accept_invitation(.:format)' => 'users#accept_invitation', :as => 'user_accept_invitation'
  put 'users/:id/reset_password(.:format)' => 'users#do_reset_password', :as => 'do_user_reset_password'
  get 'users/:id/reset_password(.:format)' => 'users#reset_password', :as => 'user_reset_password'

  # Resource routes for controller "users"
  get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
  get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
  post 'users(.:format)' => 'users#create', :as => 'create_user'
  put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
  delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  # Show action routes for controller "users"
  get 'users/:id/account(.:format)' => 'users#account', :as => 'user_account'

  # User routes for controller "users"
  match 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  match 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'


  # Resource routes for controller "alumnos"
  get 'alumnos(.:format)' => 'alumnos#index', :as => 'alumnos'
  get 'alumnos/new(.:format)', :as => 'new_alumno'
  get 'alumnos/:id/edit(.:format)' => 'alumnos#edit', :as => 'edit_alumno'
  get 'alumnos/:id(.:format)' => 'alumnos#show', :as => 'alumno', :constraints => { :id => %r([^/.?]+) }
  post 'alumnos(.:format)' => 'alumnos#create', :as => 'create_alumno'
  put 'alumnos/:id(.:format)' => 'alumnos#update', :as => 'update_alumno', :constraints => { :id => %r([^/.?]+) }
  delete 'alumnos/:id(.:format)' => 'alumnos#destroy', :as => 'destroy_alumno', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "cursos"
  get 'cursos(.:format)' => 'cursos#index', :as => 'cursos'
  get 'cursos/new(.:format)', :as => 'new_curso'
  get 'cursos/:id/edit(.:format)' => 'cursos#edit', :as => 'edit_curso'
  get 'cursos/:id(.:format)' => 'cursos#show', :as => 'curso', :constraints => { :id => %r([^/.?]+) }
  post 'cursos(.:format)' => 'cursos#create', :as => 'create_curso'
  put 'cursos/:id(.:format)' => 'cursos#update', :as => 'update_curso', :constraints => { :id => %r([^/.?]+) }
  delete 'cursos/:id(.:format)' => 'cursos#destroy', :as => 'destroy_curso', :constraints => { :id => %r([^/.?]+) }

  namespace :admin do


    # Lifecycle routes for controller "admin/users"
    post 'users/invite(.:format)' => 'users#do_invite', :as => 'do_user_invite'
    get 'users/invite(.:format)' => 'users#invite', :as => 'user_invite'

    # Resource routes for controller "admin/users"
    get 'users(.:format)' => 'users#index', :as => 'users'
    get 'users/new(.:format)', :as => 'new_user'
    get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
    get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
    post 'users(.:format)' => 'users#create', :as => 'create_user'
    put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
    delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  end

end

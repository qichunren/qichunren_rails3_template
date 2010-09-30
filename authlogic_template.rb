route "root :to => 'home#show'"
route "resource :user_session"
route "resources :users"
route "resource :account, :controller => 'users'"
 
TemplateRoot = File.dirname(__FILE__)

get (TemplateRoot + "/db/migrate/create_users.rb"), "db/migrate/201011111111_create_users.rb"

get (TemplateRoot + "/app/controllers/application_controller.rb"), "app/controllers/application_controller.rb" 

get (TemplateRoot + "/app/controllers/users_controller.rb"), "app/controllers/users_controller.rb"
get (TemplateRoot + "/app/controllers/user_sessions_controller.rb"), "app/controllers/user_sessions_controller.rb"

get (TemplateRoot + "/app/models/user.rb"), "app/models/user.rb"
get (TemplateRoot + "/app/models/user_session.rb"), "app/models/user_session.rb"

get (TemplateRoot + "/app/views/users/new.html.erb"), "app/views/users/new.html.erb"
get (TemplateRoot + "/app/views/users/show.html.erb"), "app/views/users/show.html.erb"
get (TemplateRoot + "/app/views/users/edit.html.erb"), "app/views/users/edit.html.erb"
get (TemplateRoot + "/app/views/users/_form.html.erb"), "app/views/users/_form.html.erb"

get (TemplateRoot + "/app/views/user_sessions/new.html.erb"), "app/views/user_sessions/new.html.erb"


git :add => "."
git :commit => %Q(-am "add authlogic for user register and login.")

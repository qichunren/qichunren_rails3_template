# install gems
# gem 'authlogic', :git => 'git://github.com/odorcicd/authlogic.git', :branch => 'rails3' 
gem 'mysql2'
gem "will_paginate",        "3.0.pre2"
gem 'friendly_id',          "~>3.0"
gem 'acts-as-taggable-on',  "2.0.6"
gem "rails_config",         "0.2.1"

#gem "mongrel",                         :group => :development
gem "awesome_print",                  :group => :development, :require => 'ap' 

gem "rspec", "~> 2.0",                :group => [:test, :development]
gem 'rspec-rails', '>=2.0.0',         :group => [:development, :test] 
gem "factory_girl_rails",             :group => [:test, :development]
gem 'webrat',                         :group => [:development, :test]

# adjust some files
run "rm README"
run "rm public/index.html"
run "rm public/images/rails.png"
run "cp config/database.yml config/database.yml.example"

generate "rspec:install"

# jquery
run "curl -L http://code.jquery.com/jquery-1.4.4.min.js > public/javascripts/jquery.js"
run "curl -L http://github.com/rails/jquery-ujs/raw/master/src/rails.js > public/javascripts/rails.js"

append_file '.gitignore', <<-CODE
config/database.yml
Thumbs.db
.DS_Store
public/system/**
log/
tmp/*
coverage/*
CODE    

git :init
git :add => "."
git :commit => "-a -m 'Initial commit'"

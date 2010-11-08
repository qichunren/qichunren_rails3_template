
gem 'authlogic', :git => 'git://github.com/odorcicd/authlogic.git', :branch => 'rails3' 
gem "will_paginate",  "3.0.pre2"
gem 'friendly_id',    '~>3.0'
gem 'acts-as-taggable-on', '2.0.6'
gem "rails_config",    '0.1.5'

#gem "mongrel",                         :group => :development
gem "awesome_print", :require => 'ap', :group => :development

gem 'rspec-rails', '>=2.0.0',         :group => [:development, :test]
gem 'webrat',                         :group => [:development, :test]


run "bundle install"

run "rm public/index.html"

generate "rspec:install"
# generate "jquery:install --ui"   # it takes too much time

generate(:controller, "welcome", "index")

route "root :to => \"welcome#index\"" # how to remove the route: get "welcome#index"

git :init
git :add => "."
git :commit => "-a -m 'Initial commit'"

puts "SUCCESS! Tip:rails g jquery:install --ui"

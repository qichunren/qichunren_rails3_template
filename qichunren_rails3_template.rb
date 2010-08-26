gem "will_paginate", "3.0.pre2"
gem "authlogic", "2.1.6"
run "rm public/index.html"
run "rm README && touch README"
route "root :to => \"welcome#index\""
generate(:controller, "welcome", "index")
git :init
git :add => "."
git :commit => "-a -m 'Initial commit'"

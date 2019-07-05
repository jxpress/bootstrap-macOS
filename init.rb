# setup ruby tools
include_recipe './cookbooks/rbenv/install.rb'
include_recipe './cookbooks/ruby-build/install.rb'

# setup ios tools
include_recipe './cookbooks/xcenv/install.rb'

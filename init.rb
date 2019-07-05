# setup ruby tools
## setting rbenv
include_recipe './cookbooks/rbenv/install.rb'
include_recipe './cookbooks/ruby-build/install.rb'
## setting default ruby version
include_recipe './cookbooks/rbenv/default_version.rb'

# setup swift tools
include_recipe './cookbooks/swiftenv/install.rb'

# setup ios tools
## setting xcenv
include_recipe './cookbooks/xcenv/install.rb'
include_recipe './cookbooks/xcode-install/install.rb'
## setting default xcode version
include_recipe './cookbooks/xcode-install/default_version.rb'

# source
include_recipe './cookbooks/source/source.rb'

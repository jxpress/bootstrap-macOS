package "git"

git ENV["HOME"] + "/.rbenv/plugins/ruby-build" do
    repository "https://github.com/rbenv/ruby-build.git"
    not_if "test $(which ~/.rbenv/plugins/ruby-build/bin/ruby-build)"
end

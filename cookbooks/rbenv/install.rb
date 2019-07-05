package "git"

git ENV["HOME"] + "/.rbenv" do
    repository "https://github.com/rbenv/rbenv"
    not_if "test $(which rbenv)"
end

execute "setup rbenv" do
    command "cd ~/.rbenv && src/configure && make -C src"
    not_if "test $(rbenv version)"
end

execute "update rbenv" do
    command "cd ~/.rbenv ; git checkout master ; git pull"
end

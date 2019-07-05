package "git"

git ENV["HOME"] + "/.rbenv" do
    repository "https://github.com/rbenv/rbenv"
    not_if "test $(which rbenv)"
end

execute "set PATH rbenv" do
  command %Q(echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.bash_profile)
  not_if "cat $HOME/.bash_profile | grep '$HOME/.rbenv/bin:$PATH'"
end

execute "rbenv init" do
  command %q(echo 'eval "$(rbenv init -)"' >> $HOME/.bash_profile)
  not_if "cat $HOME/.bash_profile | grep 'rbenv init'"
end

execute "setup rbenv" do
    command "cd ~/.rbenv && src/configure && make -C src"
    not_if "test $(rbenv version)"
end

execute "update rbenv" do
    command "cd ~/.rbenv ; git checkout master ; git pull"
end

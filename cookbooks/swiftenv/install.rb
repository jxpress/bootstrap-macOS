package "git"

git ENV["HOME"] + "/.swiftenv" do
    repository "https://github.com/kylef/swiftenv"
    not_if "test $(which swiftenv)"
end

execute "set PATH swiftenv" do
  command %Q(echo 'export PATH="$HOME/.swiftenv/bin:$PATH"' >> $HOME/.bash_profile)
  not_if "cat $HOME/.bash_profile | grep '$HOME/.swiftenv/bin:$PATH'"
end

execute "swiftenv init" do
  command %q(echo 'eval "$(swiftenv init -)"' >> $HOME/.bash_profile)
  not_if "cat $HOME/.bash_profile | grep 'swiftenv init'"
end

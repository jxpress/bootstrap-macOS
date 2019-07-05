package "git"

git ENV["HOME"] + "/.xcenv" do
    repository "https://github.com/xcenv/xcenv"
    not_if "test $(which xcenv)"
end

execute "set PATH xcenv" do
    command %Q(echo 'export PATH="$HOME/.xcenv/bin:$PATH"' >> $HOME/.bash_profile)
    not_if "cat $HOME/.bash_profile | grep '$HOME/.xcenv/bin:$PATH'"
end

execute "xcenv init" do
    command %q(echo 'eval "$(xcenv init -)"' >> $HOME/.bash_profile)
    not_if "cat $HOME/.bash_profile | grep 'xcenv init'"
end

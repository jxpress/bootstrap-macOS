execute "install default ruby" do
    command "rbenv install -s 2.4.6"
end

execute "setup global ruby" do
    command "rbenv global 2.4.6 && rbenv rehash"
end

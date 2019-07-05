# TODO: ENV check
# execute "update xcode-install" do
#     command "xcversion update"
# end

execute "install xcode 10.1" do
    command "xcversion install 10.1"
end

execute "install xcode 10.2" do
    command "xcversion install 10.2"
end

execute "install xcode 10.2.1" do
    command "xcversion install 10.2.1"
end

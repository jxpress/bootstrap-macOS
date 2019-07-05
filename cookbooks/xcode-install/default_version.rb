# TODO: ENV check
# execute "update xcode-install" do
#     command "xcversion update"
# end

execute "install default xcode" do
    command "xcversion install 10.2"
end

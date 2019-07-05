package "git"

git ENV["HOME"] + "/.xcenv" do
    repository "https://github.com/xcenv/xcenv"
    not_if "test $(which xcenv)"
end

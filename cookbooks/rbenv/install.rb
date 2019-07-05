package "git"

git ENV["HOME"] + "/.rbenv" do
    repository "https://github.com/rbenv/rbenv"
    not_if "test $(which rbenv)"
end

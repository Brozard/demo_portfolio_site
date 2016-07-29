require 'httparty'

github_url = "https://api.github.com/users"
github_user = "Brozard"
users_url = "#{github_url}/#{github_user}/repos"

repo_list = HTTParty.get(users_url)

def most_recently_pushed(array)
  index = 0
  array.each_with_index do |v, i|
    if array[i]["pushed_at"] >= array[index]["pushed_at"]
      index = i
    end
  end
  index
end

def last_5_pushes(array)
  last_5_pushes = []
  5.times do
    last_5_pushes << array.delete_at(most_recently_pushed(array))
  end
  last_5_pushes
end

last_5_pushed_repos =  last_5_pushes(repo_list)
puts last_5_pushed_repos
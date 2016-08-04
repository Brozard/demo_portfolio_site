require 'httparty'

# featured_repos = ["digital_root", "REPL_Game", "Voter_Sim", "discomerus_v1", "quiz_code", "job_app"]
# ["id"]
# ["name"]
# ["commits_url"]
# ["html_url"]
# ["pushed_at"]
# ["language"]
# [""]
# [""]
# [""]
# [""]
# [""]
# [""]
# [""]
# [""]
# [""]
# [""]

github_url = "https://api.github.com"
github_user = "Brozard"
users_url = "#{github_url}/users/#{github_user}/repos"

repo_list = HTTParty.get(users_url)

def most_recent_repo_push(repo_list)
  index = 0
  repo_list.each_with_index do |v, i|
    if repo_list[i]["pushed_at"] > repo_list[index]["pushed_at"]
      index = i
    end
  end
  index
end

def last_5_repos_pushed_to(repo_list)
  last_5_pushes = []
  5.times do
    last_5_pushes << repo_list.delete_at(most_recent_repo_push(repo_list))
  end
  last_5_pushes
end

# puts repo_list

last_5_pushed_repos =  last_5_repos_pushed_to(repo_list)
# puts last_5_pushed_repos

def repo_commits(repos)
  repos_commits = []
  repos.each do |repo|
    repos_commits << HTTParty.get(repo["commits_url"].gsub("{/sha}", ""))[0]
  end
  repos_commits
end

last_5_pushed_repos_commits = repo_commits(last_5_pushed_repos)

# puts last_5_pushed_repos_commits
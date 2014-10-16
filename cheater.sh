rails new my_blog -d postgresql
rake db:create
rake db:migrate
rails server
rails g scaffold Post subject:string body:string published_at:datetime draft_status:boolean
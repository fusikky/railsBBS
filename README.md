railsBBS

 railsアプリの作り方

```
$rails new myapp (railsのアプリケーションを作る)
```

$vim Gemfile -> therubyracerのコメント外す 

$rails g model Post user_id title text

$rake db:migrate

$rails g controller Posts


$rails new myapp (railsのアプリケーションを作る)
$ rails server (rails s)
$vim Gemfile -> therubyracerのコメント外す 
$rails server でサーバーが立ち上がる(localhost:3000)でlisten

$rails generate scaffold User name:string score:integer
 migrationやらいろいろやってくれる
$rake db:migrate # scaffold適用

$rails generate model Project title:string #dbのmodel作成

model -> 単数形、最初は大文字　（rubyの規約）
$ rails db (今使っているdbにアクセス)
$sqlite> .scheme (desc と同じ)
$ rails console (dbをインタラクティブに制御)
$ p = Project.new(title: "p1")
$ p.save (実行される)
$p = Project.create(title: "p2”) (newとsaveを同時にやってくれる)

$rails generate controller Projects (controllerにsをつけるのは規約)
$ vim app/controllers/projects_controller.rb 

$rake routes

$vim app/views/layouts/application.html.erb すべてのビューのテンプレート yieldの中に表示

----
# modelの新規作成
# (Task, title:defaultはstring, projectに依存関係がある)
$rails g model Task title done:boolean project:references
$rake db:migrate (migration実行)






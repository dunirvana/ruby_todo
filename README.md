# README

Ruby project to support a todo list, to study the language.

## Commands used during the code:

* Create project
```
rails new todo  -j esbuild --css bootstrap -d postgresql
```

* Install popperjs
```
npm install @popperjs/core --save
```

* Add gems
```
gem "rails-i18n"
gem "pry"
```

* Precompile
```
rails assets:precompile
```

* Create database
```
rails db:create
```

* Create with scaffold controller/view/model/migration (model called "task" with properties "description", "due_date" and "done")
```
rails g scaffold task description:string due_date:date done:boolean
```

* After the run of the scaffold command edit the migration file "XXX_create_tasks.rb" to set "description" and "done" not null

* Create tables
```
rails db:migrate
```

* Enters in Rails console and creates the first task manually
```
rails c
Task.create description: 'Buy fruits', done: false
```

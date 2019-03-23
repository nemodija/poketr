# poketr

## Getting Started

### download from Github

```sh
git clone https://github.com/nemonium/poketr.git
cd poketr
```

### install libraries

```sh
bundle install --path vendor/bundler
```

### database migration

```sh
bundle exec rake db:drop db:create db:schema:load db:seed_fu
```

### run

```sh
bundle exec rails s
```

## deploy on heroku

### download from Github

~~~sh
git clone https://github.com/nemonium/poketr.git
cd poketr
~~~

### heroku login

~~~sh
heroku login
  # Enter your Heroku credentials:
  # Email: k***************@gmail.com
  # Password: ***************
  # Logged in as k***************@gmail.com
~~~

### create app

~~~sh
heroku create poketr-app
  # Creating ? poketr-app... done
  # https://poketr-app.herokuapp.com/ | https://git.heroku.com/poketr-app.git

heroku ps
  # Free dyno hours quota remaining this month: 985h 14m (98%)
  # Free dyno usage for this app: 0h 0m (0%)
  # For more information on dyno sleeping and how to upgrade, see:
  # https://devcenter.heroku.com/articles/dyno-sleeping
  # 
  # No dynos on ? poketr-app
~~~

### add cleardb

~~~sh
heroku addons:add cleardb
  # Creating cleardb on ? poketr-app... free
  # Created cleardb-opaque-42971 as CLEARDB_DATABASE_URL
  # Use heroku addons:docs cleardb to view documentation
~~~

### configuration cleardb

~~~sh
DATABASE_URL=$(heroku config | grep CLEARDB_DATABASE_URL | cut -d: -f2- | sed s/mysql/mysql2/g)
echo ${DATABASE_URL}
  #

heroku config:set DATABASE_URL="${DATABASE_URL}"
  # Setting DATABASE_URL and restarting ? poketr-app... done, v6
  # DATABASE_URL:  ...

heroku config
  # === poketr-app Config Vars
  # CLEARDB_DATABASE_URL:
  # DATABASE_URL:
~~~

### deploy

~~~sh
git push heroku master

heroku run rake db:migrate

heroku run rake db:seed_fu
~~~

### confirm

~~~sh
heroku info
  # === poketr-app
  # Addons:         cleardb:ignite
  # Auto Cert Mgmt: false
  # Dynos:          web: 1
  # Git URL:        https://git.heroku.com/poketr.git
  # Owner:          k************************m
  # Region:         us
  # Repo Size:      130 KB
  # Slug Size:      50 MB
  # Stack:          heroku-18
  # Web URL:        https://poketr-app.herokuapp.com/
~~~

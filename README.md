# RDIG - Segments

An web application built in Ruby on Rails that allows you to segment your contacts accorting to custom reports created.

## Running the application

Make sure you have Ruby installed.  Also, install the [Heroku Toolbelt](https://toolbelt.heroku.com/).

```sh
$ git clone git@github.com:lsandrade/rdig.git
$ cd rdig
$ bundle install
$ bundle exec rake db:create db:migrate
$ rails server
```

Testing
```
$ rake spec
```

Your app should now be running on [localhost:3000](http://localhost:3000/).

Don't forget to config your database credentials in rdig/config/database.yml


You can also test Rdig at Heroku:

    http://rdig.herokuapp.com

## Contact

luansandrade92@hotmail.com

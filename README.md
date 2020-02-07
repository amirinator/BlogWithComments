# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
    Ruby 2.7.0
    Rails 5.2.4

* System dependencies
    Postgres

* Configuration
    
    The following gems were imported for this project. They are
    also specified in the Gemfile:
    
    
* Database creation
```sh
$ npm install --global standard-readme-spec
```
    > rake db:setup
    > rake db:migrate
                    
* Database initialization
    For any modifications you must run the migration script
    > rake db:migrate

* How to run the test suite
    > bundle rake

* Services (job queues, cache servers, search engines, etc.)
    > bundle exec puma

* Deployment instructions
    The following instructions are deploying to a Heroku
    instance.
    
    The following instructions are for a Mac development 
    environment to deploying to Heroku. It's assumed
    the Mac package manager Brew is installed.
    
    For more detalied instructions see here:
    https://devcenter.heroku.com/articles/heroku-cli
    
    Run the following commands:
    > brew tap heroku/brew && brew install heroku
    > heroku --version
        This should output the version of CLI
    > heroku login
    
    Now you have an active login into your Heroku account.
    
    Next change to the directory of your application.
    
    > cd ~/myapp
    > heroku create

    The following lists Git remote that your Heroku account
    is associated with and will push your master to your
    Heroku instance
    > git config --list | grep heroku
    > git push heroku master
    
    To create the production database
    > heroku run rake db:setup
    > heroku run rake db:migrate
    
    To spin up a web instance run
    > heroku ps:scale web=1

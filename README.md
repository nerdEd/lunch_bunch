Lunch Bunch
===========

* requires RVM

Setup
-----

    cd lunch_bunch
    bundle
    rake db:reset
    rake db:populate
    rake

Deployment
----------

Using [heroku_san](https://github.com/fastestforward/heroku_san) for managing multiple Heroku environments:

    # Add remotes for both environments
    rake all heroku:remotes

    # Deploy current branch to staging and migrate
    rake staging deploy

    # Open a console for production
    rake production console

    # View production logs
    rake production logs

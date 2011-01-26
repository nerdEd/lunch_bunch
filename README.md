Lunch Bunch
===========

This fork of Lunch Bunch will be the basis of "Lunch with a Local" a project by 
the B'more on Rails user group for RailsConf 2011. The hope is that it will 
facilitate locals getting groups of RailsConf attendees out for lunch. 

If it seems like it will work, we'll probably want to expand the scope of the 
application to include other events not just lunch.

Want to help? Check out the pivotal project 
[here](https://www.pivotaltracker.com/projects/216167)

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

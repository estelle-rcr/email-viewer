# README

This repo contains a Ruby-on-Rails app with Bootstrap framework and Javascript functions. The point of this repo is to practice AJAX method for handling CRUD functions without refreshing pages.
It's an app designed for handling emails but there are remaining folders of the to-do-list project included.


## Check on Heroku the email app:
https://email-viewer-ajax.herokuapp.com/


## Install from your console and consult on your local host:
`git clone https://github.com/estelle-rcr/email-viewer.git`
  
  `cd email-viewer`

Install the bundle:
  `bundle install`
  
Set up the database:
  `rails db:create`
      `rails db:migrate`
  
Seed the database:
  `rails db:seed`

Finally launch the server:
  `rails server`

And then access the localhost accordingly, for instance:
  `http://localhost:3000/`


  ## How to check the results
Please launch the index.html on your browser and check in the developer console under 'console' the results will be visible on the html page OR displayed as javascript logs according to your actions.
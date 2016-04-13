Allabolag Proof Of Concept
==========================
This is a proof of concept, a small app with an api and a client to follow the full flow of the API.

Good to know
------------
Using Grape for external API for a more professional look. and using respond_to json for internal api.

install
-------
You can install manually or using the vagrant box.

If you wanna do it manual, do this:

1. run ```bundle install```
1. set db settings in ```.env``` and ```config/database.yml``` if needed
1. run ```rake db:create db:migrate db:seed```
1. run ```rails s puma -b127.0.0.1```
1. it is now running on ```localhost:3000```

if running the vagrant box:
1. run ```vagrant up```
1. run ```vagrant ssh```
1. go to /vagrant and run ```bundle install```
1. set db settings in ```.env``` and ```config/database.yml``` if needed
1. run ```rake db:create db:migrate db:seed```
1. run ```rails s puma -b127.0.0.1```
1. it is now running on ```localhost:3000```

Client
------
A client.rb is included to show the client side.
you can run it normally after run ```bundle install```:

```ruby client.rb [company name]```


tests
-----
We have tests, using rspec. For run them, run ```rspec``` in application directory.

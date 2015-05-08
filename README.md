#artist
Final project for General Assembly's Web Development Immersive program, McClane cohort (New York City, February - May 2015)

##Overview

This app allows an admin to publish a website for an artist. 

The server is built in Rails 4, using a Postgres database.  Admin interface is provided via Rails templated pages.  The server delivers all end-user-facing data via a RESTful JSON API. 

The frontend is built with Backbone.js, using typical Backbone conventions for models, collections and views.  A Backbone router uses Pushstate to generate browser history. Images are stored externally and accessed directly by the front-end.

##Demo

Demo using the artist Ruth Root's work: http://ruthroot.herokuapp.com

##Configuration & Deployment

The artist's name is stored in an "artist.yml" file which is loaded by the "artist_info.rb" initializer.  Image repository access by the front-end is managed directly in Backbone. All other data is handled through normal ActiveRecord models.  

The following steps have been tested:

1. Set up Cloudinary account
2. Deploy to Heroku
3. Attach Postgresql db to Heroku instance
4. Add S3 credentials & Postgresql 'color' to Heroku config
5. Follow standard Heroku steps to start Rails server

You'll also have to populate your database with content, for which you can use the admin user interface.  

##Front-end

As developed this is a "read-only" site from the perspective of the end-user.  Users cannot create accounts or persist state between sessions.  The app does use Backbone's Router class to provide browser state to the user, supporting bookmarks or link-sharing features as well as navigation.  

CSS for the user interface is organized using Foundation.  


##Database

The data model for this app assumes a one-to-many relationship between artworks and exhibitions, and also assumes that a single artist has created all the artworks represented.  Of course the schema may need to be adjusted to fit different use cases (retrospectives, joint projects, etc.)  

The current app is written to use the Postgresql database, given that the demo is hosted on Heroku; however, no special Postgres features are used and it should be straightforward to tell ActiveRecord to use MySQL if you prefer.    

##Miscellaneous


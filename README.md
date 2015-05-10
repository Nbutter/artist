#artist
Final project for General Assembly's Web Development Immersive program, McClane cohort (New York City, February - May 2015)

##Overview

This app allows an admin to publish a website for an artist. 

The server is built in Rails 4, using a Postgres database.  

The site uses standard Rails 4 conventions and templates for both the public-facing and admin sections.

##Demo

Demo using the artist Ruth Root's work: http://ruthroot.herokuapp.com

##Configuration & Deployment

The artist's name is stored in an "artist.yml" file which is loaded by the "artist_info.rb" initializer.   All other data is handled through normal ActiveRecord models.  

Admin users are expected to be added via the console.

The site assumes that images are stored remotely.

Image URL details and all other data may be added by admin users through the admin section of the site.

The following steps have been tested:

2. Deploy to Heroku
3. Attach Postgresql db to Heroku instance
4. Add Postgresql 'color' to Heroku config
5. Follow standard Heroku steps to start Rails server

##Front-end

As developed this is a "read-only" site from the perspective of the end-user.  Users cannot create accounts or persist state between sessions.  

Admin users can perform CRUD operations on artworks, exhibitions, venues and artwork images. 

Artist details are treated as website configuration data, not content, and are supplied via a YML file.

CSS for the user interface is organized using Foundation.  

##Database

The data model for this app assumes a one-to-many relationship between artworks and exhibitions, and also assumes that a single artist has created all the artworks represented.  Of course the schema may need to be adjusted to fit different use cases (retrospectives, joint projects, etc.)  

The current app is written to use the Postgresql database, given that the demo is hosted on Heroku; however, no special Postgres features are used and it should be straightforward to tell ActiveRecord to use MySQL if you prefer.    

##Miscellaneous


# Rails Sessions Review

## Topics
  - Cookies, Sessions, Flash Messages - Where do they come from? Where do they go?
  - Application controller methods
  - Helper methods
  - Before actions
  - Authentication vs Authorization
  - Treasure maps!!!
  
## Goal

Create a user log in for our rails app in order to view the map to the Flatiron School Treasure.

## What we have now:
  1. rails app
  2. <a href="https://github.com/codahale/bcrypt-ruby">bcrypt gem</a>
  3. migration with user and password
  4. User model with <a href="https://apidock.com/rails/v4.0.2/ActiveModel/SecurePassword/ClassMethods/has_secure_password">secure password</a>
  5. Controllers
  6. Static views folder
  7. Login and signup forms made, but nothing persisted to DB

## Problems:
  1. People can see the map without logging in. Bad!
  2. Session id is not being saved upon user creation or login

## Questions:

  - What are sessions?
  - How are sessions different from cookies?
  - Side note: what about flash messages?
  - What do we store in sessions and why?
  - How does someone become 'logged in' when they press 'submit' on a login form? 

  "Cookies, Sessions and Flashes are three special objects that Rails 4 gives you which each behave a lot like hashes. They are used to persist data between requests, whether until just the next request, until the browser is closed, or until a specified expiration has been reached."
    - <a href="https://www.theodinproject.com/courses/ruby-on-rails/lessons/sessions-cookies-and-authentication">The Odin Project</a>
    
## To Do
  1. Add sessions to user creation and login

  2. Redirect (unless logged in) if someone tries to navigate to map

  3. Toggle log out or login in nav
  
  # One More Question
  - What's the difference between authentication and authorization? 


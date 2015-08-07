# WDI_PROJECT2_eStub

## eStub a web app built using Rails

## Describe the App:
eStub is a web app to easily record the details of events you have attended, concerts, films, theatre, sporting events, whatever you would like to record so can look back and reminisce about good times.  

Take your Stubs out of the shoebox and into the eStub.

## Requirements:

* App must allow users to create an account.
* App must allow users to log into their account.
* App must allow users to add/edit/delete events.
* App must allow file uploads of different image types e.g. jpeg, png, gif.
* App must allow users to see their own events.
* App must allow users to be able to share events.
* App must be responsive.
* App must allow users to search for events by date range/category (To be Determined)

### Identify the Main Objects:

* User - details of the user, name, email etc
* Event - event details, name, date, venue etc
* Stubs - file uploads or url links
* Extras - Attended with, Ratings and user comments.
* Admin - details for an admin specific user (access all areas - To Be Determined)

#### User User Story:

As a person who goes to events, i want to have an online place to record which events i have been to, so i can look back and reminisce about good, or bad! times.

#### Admin User Story (TBC):

As an administrator for the site, i want to have access to all areas/features so i can ensure the site is maintained well for our users.

#### User Use Case:

* User logs into site
* User creates a new profile using email and password
* User is logged into site
* User adds an event
* User uploads a photo of their stub or links to url
* User can see list of events
* User can share details of event
* User can edit events
* User adds ratings to the event
* User comments on the event
* User can logout of the site.

#### Pseudo Code:

* Create a new Rails app.
* Bundle bcyrpt gem.
* Setup User models and controllers.
* Ensure can create new user account and login.
* Setup password login feature.
* Test can create new user with a set password.
* Test can login as user with specified details.
* Create session controllers.
* Test session logins.
* Add Events models and controllers.
* Setup/modify relevant views.
* Style the app.

## Technologies Used:

Rails, using Postgresql as the database
Bcrypt for the login features
Started to used Foundation CSS Framework, but then went vanilla.
Carrierwave gem for file uploads

## What next?

Have made a good start, would love to implement a calendar feature so can see events shown on a calendar, then click on events from the entries.

Allow more photo uploads for users, currently just 2, and also possibly videos.

Enable facility to Tweet events, or share on Facebook.







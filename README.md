# README

### Versions

Rails 5.2.7

Ruby 2.7.4

## Setup
Run through the standard Rails setup.

```bash
$ bundle install
$ rake db:{create,migrate}
$ rails s
```

Navigate to `http://localhost:3000`

_Note: This should bring up an error, but you should be able to start the server fine._

### Challenge

Sign up for a National Park Service API Key [here](https://www.nps.gov/subjects/developer/get-started.htm)

[National Park Service API Docs](https://www.nps.gov/subjects/developer/api-documentation.htm)

Complete the following user story

```
As a user,
When I select "Tennessee" from the form,
(Note: use the existing form)
And click on "Find Parks",
I see the total of parks found,
And for each park I see:
- full name of the park
- description
- direction info
- standard hours for operation
```

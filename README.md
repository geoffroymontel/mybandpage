# My band page

*Work in progress*.  
Trying to make easier to set up a band page with no kind of backoffice :  
- news will be retrieved from Facebook  
- biography & discography will be retrieved from discogs  
- music videos from youtube  
- music audio clips from soundcloud 

## Installation

### get repository
```
git clone ...
cd mybandpage
bundle install --without production
```

### create your .env file 
Create a `.env` file with your Facebook credentials
```
FB_APP_ID=<your facebook app id>
FB_APP_SECRET=<your facebook app secret>
```

### run tests
```
bundle exec rake tests
```

## Pushing to Heroku

```
git push heroku master
heroku rake db:migrate
```

## Some notes

### FB : getting token without asking user to authenticate

```ruby
https://graph.facebook.com/oauth/access_token?client_id=ENV[FB_APP_ID]&client_secret=ENV[FB_APP_SECRET]&grant_type=client_credentials
```

### FB : retrieving page wall

```ruby
https://graph.facebook.com/page_id/feed?access_token=xxxx
```

## Author
[Geoffroy Montel](https://github.com/geoffroymontel)


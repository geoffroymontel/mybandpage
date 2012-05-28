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
cd mybandpage
bundle install --without production
```

### set up your env variables 
Create a `.env` file with your Facebook credentials
```
FB_APP_ID=<your facebook app id>
FB_APP_SECRET=<your facebook app secret>
```

### run tests
```
bundle exec rspec -c --format doc
```

## Heroku

### Set up heroku
Push the vars on heroku
```
heroku config:add FB_APP_ID
heroku config:add FB_APP_SECRET
```

## Pushing to Heroku

```
git push heroku master
heroku rake db:migrate
heroku open
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

### fb_graph usage
```ruby
page = FbGraph::Page.new('brocolirecords', :access_token => FacebookOauthEndpoint.token)
# feed
feed = page.feed
# 11th message
page.feed[10].message
# link
page.feed[2].link
# image
if page.feed[2].type == "photo" then
  image_id = page.feed[2].graph_object_id
  photo = FbGraph::Photo.new(image_id).fetch
  photo_url = photo.images[0].source
end

```

## Twitter Bootstrap
The RoR Tutorial likes the 'bootstrap-sass' gem.
Create the file : `app/assets/stylesheets/custom.css.scss`
```scss
@import "bootstrap-responsive";
```


## Author
[Geoffroy Montel](https://github.com/geoffroymontel)


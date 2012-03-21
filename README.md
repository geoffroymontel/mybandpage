# My band page

*Work in progress*.  
Trying to make easier to set up a band page with no kind of backoffice :  
- news will be retrieved from Facebook  
- biography & discography will be retrieved from discogs  
- music videos from youtube  
- music audio clips from soundcloud  

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

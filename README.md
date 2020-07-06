# TestZimad API

## Getting Started

Run bundle (for fish syntax).


```
bundle install --path ~/.bundle --binstubs & git checkout bin/ & spring stop & spring binstub 
```

## Running

Start sidekiq.

```
bundle exec sidekiq -r ./server.rb
```

Start server. Available at http://localhost:9292


```
bundle exec rackup
```

## Authors

* **Baidin Maxim** - *Creator* - [the_scrubs_fan](https://github.com/TheScrubsFan)




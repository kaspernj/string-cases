# StringCases

Various kind of string-handeling for Ruby.

## Install

Add to your Gemfile and bundle:

```ruby
gem "string-cases"
```

## Usage

### Camel to snake case

```ruby
StringCases.camel_to_snake("UserPictures") #=> "user_pictures"
```

### Snake to camel case

```ruby
StringCases.snake_to_camel("user_pictures") #=> "UserPictures"
```

### Pluralize

```ruby
StringCases.pluralize("user") #=> "users"
StringCases.pluralize("category") #=> "categories"
```

### Singularize

```ruby
StringCases.singularize("users") #=> "user"
StringCases.singularize("categories") #=> "category"
```

### Constantize

```ruby
StringCases.constantize("SomeNamespace::SomeClass") => SomeNamespace::SomeClass
```

### Symbolize keys

```ruby
StringCases.symbolize_keys({"test1" => "test1val", "test2" => {"test2key" => "test2val"}}, recursive: true) #=> {:test1 => "test1val, :test2 => {:test2key => "test2val"}}
```

```ruby
StringCases.stringify_keys({test1: "test1val", test2: {test2key: "test2val"}}, recursive: true) #=> {"test1" => "test1val, "test2" => {"test2key" => "test2val"}}
```

## Contributing to string-cases

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2013 kaspernj. See LICENSE.txt for
further details.

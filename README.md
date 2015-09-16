## Rails 5 trying out model attributes

Just a small sample playing with the model attributes API in Rails 5

## Links

- [API](http://edgeapi.rubyonrails.org/) search for
  `ActiveRecord::Attributes::ClassMethods`

## Setting up a new rails 5 App

1. clone the rails repo github.com/rails/rails
2. bundle
3. from within the rails repo run `bundle exec railties/exe/rails new PATH_TO_NEW_APP --edge

## Important Stuff

- `app/models/wallet.rb` wallet model using the `MoneyType`
- `config/initializers/types.rb` registration of the `MoneyType`
- `app/models/money_type.rb` definition of `MoneyType`

## Use it

```ruby
wallet = Wallet.create pennies: "10.50 GBP"
# => Wallet pennies: 1050, title: nil
```

## This was part of Ruby Hacknight London

[Rubyhacknight](https://github.com/rubyhacknight/meetups/issues/11)





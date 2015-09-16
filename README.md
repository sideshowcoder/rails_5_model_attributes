## Rails 5 trying out model attributes

Just a small sample playing with the model attributes API in Rails 5

## Links

- [API](http://edgeapi.rubyonrails.org/) search for
  `ActiveRecord::Attributes::ClassMethods`

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





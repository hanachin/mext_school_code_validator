# MextSchoolCodeValidator

[文科省学校コード](https://www.mext.go.jp/b_menu/toukei/mext_01087.html)のバリデーター

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mext_school_code_validator'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install mext_school_code_validator

## Usage

```ruby
class School
  include ActiveModel::API

  attr_accessor :mext_school_code

  validates :mext_school_code, mext_school_code: true
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hanachin/mext_school_code_validator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/hanachin/mext_school_code_validator/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MextSchoolCodeValidator project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hanachin/mext_school_code_validator/blob/main/CODE_OF_CONDUCT.md).

# fluent-plugin-uri-parser

[![Gem Version](https://badge.fury.io/rb/fluent-plugin-uri-parser.svg)](https://badge.fury.io/rb/fluent-plugin-uri-parser) [![wercker status](https://app.wercker.com/status/a735d29143f3a1a727fc65653bc81e2a/s "wercker status")](https://app.wercker.com/project/bykey/a735d29143f3a1a727fc65653bc81e2a)

This is a Fluentd plugin to parse uri and query string in log messages.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fluent-plugin-uri-parser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fluent-plugin-uri-parser

## Component

### QueryStringParserFilter

This is a Fluentd plugin to parse and filtering query string in log messages and re-emit them.

## Configuration

```
<filter some.**>
  @type query_string_parser
  key_name path
  hash_value_field query
  # inject_key_prefix query
  # suppress_parse_error_log false
  # ignore_key_not_exist false
</filter>
# input string of data: {"parsed.query": "/path/to/query?foo=bar"}
# output data: {"query":{"foo":"bar"}}

```

**key_name (Required)**

Key of the value to be parsed in the record.

**hash_value_field (Default: '')**

If a value is set, the value after parsing is stored in hash with key specified value.

**inject_key_prefix (Default: '')**

If you set a value, set the value specified for the key after parsing as prefix.

**suppress_parse_error_log (Default: false)**

If set to `true`, no error log is output even if parsing fails.

**ignore_key_not_exist (Default: false)**

If set to `true`, if the field specified by `key_name` does not exist, the record will not be emit to the next stream. That means that the data will be lost there.

**ignore_nil (Default: false)**

If set to `true`, exclude key if the value after parse is nil.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/daichirata/fluent-plugin-uri-parser.


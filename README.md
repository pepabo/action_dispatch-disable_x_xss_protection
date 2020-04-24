# ActionDispatch::DisableXXssProtection

> Disables the X-XSS-Protection header which Action Dispatch sets by default

This gem disables the X-XSS-Protection header which Action Dispatch sets as `1; mode=block` by default. Applications always return `X-XSS-Protection: 0` after installing this gem.

## Usage

All you need is to add this gem to your application's Gemfile:

```ruby
gem 'action_dispatch-disable_x_xss_protection'
```

And then execute:

```bash
$ bundle
```

Assumed that a server has started by `bin/rails s`:

```
# before installing this gem
$ curl -sI http://localhost:3000 | grep X-XSS-Protection
X-XSS-Protection: 1; mode=block

# after installing this gem
$ curl -sI http://localhost:3000 | grep X-XSS-Protection
X-XSS-Protection: 0
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pepabo/action_dispatch-disable_x_xss_protection.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

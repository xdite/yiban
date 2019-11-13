# Yiban 壹伴标题助手

这是一个可以直接呼叫壹伴标题助手，快速生成的 command line wrapper

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yiban'
```

## Setting 产生设定

`yiban config`

会在 ~/.yiban/settings.yml 生成


```
---
:extension_token: ""
```

## 拿到壹伴 Token

https://shimo.im/docs/yvgjDxjCyTwHJGJt

## Usage 使用方式

* yiban word 詞 # 返回推荐标题

返回 json 可以自己排序加工



## Other 其他说明

这个软件目前为自用，所以写得很简陋。有问题请自行修复，并拉 pull request。



## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/xdite/yiban. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Yiban project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/yiban/blob/master/CODE_OF_CONDUCT.md).

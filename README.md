# mruby-jsonrpc-client   [![Build Status](https://travis-ci.org/masahino/mruby-jsonrpc-client.svg?branch=master)](https://travis-ci.org/masahino/mruby-jsonrpc-client)
JSONRPC::Client class
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

    # ... (snip) ...

    conf.gem :github => 'masahino/mruby-jsonrpc-client'
end
```
## example
```ruby
p AAlib.hi
#=> "hi!!"
t = AAlib.new "hello"
p t.hello
#=> "hello"
p t.bye
#=> "hello bye"
```

## License
under the MIT License:
- see LICENSE file

MRuby::Gem::Specification.new('mruby-jsonrpc-client') do |spec|
  spec.license = 'MIT'
  spec.authors = 'masahino'

  spec.add_dependency 'mruby-json'
  spec.add_dependency 'mruby-random', core: 'mruby-random'
  spec.add_dependency 'mruby-httprequest'
  spec.add_test_dependency 'mruby-json-rpc', github: 'postmodern/mruby-json-rpc'
end

##
## JSONRPC::Client Test
##
TEST_URL = 'http://localhost:4389/'

assert("initialize") do
  client = JSONRPC::Client.new(TEST_URL)
  assert_kind_of JSONRPC::Client, client
  assert_equal TEST_URL, client.url
  assert_equal 'application/json', client.options["Content-Type"]
end

assert("initialize with options") do
  client = JSONRPC::Client.new(TEST_URL, {"Content-Type" => 'application/vscode-jsonrpc; charset=utf-8'})
  assert_kind_of JSONRPC::Client, client
  assert_equal TEST_URL, client.url
  assert_equal 'application/vscode-jsonrpc; charset=utf-8', client.options["Content-Type"]
end

assert("invoke") do
  client = JSONRPC::Client.new(TEST_URL)
#  client.invoke("test", {:foo => 'bar'})
end


module JSONRPC
  JSON_RPC_VERSION = '2.0'
  def self.make_id
    rand(10**12)
  end

  class Client
    attr_accessor :url, :options
    def initialize(url, opts = {})
      @url = url
      @options = opts
      @options["Content-Type"] ||= 'application/json'
    end

    def invoke(method, args)
      resp = send_single_request(method.to_s, args)
    end

    def send_single_request(method, args)
      post_data = JSON::generate({
          'jsonrpc' => JSON_RPC_VERSION,
          'method' => method,
          'params' => args,
          'id' => JSONRPC.make_id,
        })
      http = HttpRequest.new()
      response = http.post(@url, post_data, @options)
      response
    end
  end
end

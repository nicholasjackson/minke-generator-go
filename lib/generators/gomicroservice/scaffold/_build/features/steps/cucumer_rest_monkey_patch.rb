class Object
  def request path,request_opts
    req = "#{$SERVER_PATH}" + path
    uri = URI.parse(req)

    http = Net::HTTP.new(uri.host, uri.port)

    if request_opts[:method] == :post
          request, body = send_post_request(uri, request_opts)
    elsif request_opts[:method] == :put
          request, body  = perform_put_request(uri, request_opts)
    elsif request_opts[:method] == :get
          request = send_get_request(uri, request_opts)
    elsif request_opts[:method] == :delete
          request, body = perform_delete_request(uri, request_opts)
    end

    #do we have any headers to add?
    if @headers != nil
      @headers.each { |k,v| request.add_field(k, v) }
      @headers = nil
    end

    if req.include? "https"
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        @response = http.request(request,body)
    else
       http = Net::HTTP.new(uri.host, uri.port)
       @response = http.request(request,body)
    end
  end

  def perform_delete_request uri,request_opts
    request = Net::HTTP::Delete.new(uri.request_uri)
    body = nil
    if request_opts[:params]
      body = request_opts[:params].to_json
    else
      body = request_opts[:input]
    end
    return request, body
  end
end

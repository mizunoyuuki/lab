app = proc do |env|
  body = <<~TEXT
    method: #{env["REQUEST_METHOD"]}
    path: #{env["PATH_INFO"]}
    query: #{env["QUERY_STRING"]}
    user_agent: #{env["HTTP_USER_AGENT"]}
    host: #{env["HTTP_HOST"]}
  TEXT
  [
    200,
    {"content-type" => "text/plain"},
    ["Hello Ruby!\n" + body]
  ]
end

run app

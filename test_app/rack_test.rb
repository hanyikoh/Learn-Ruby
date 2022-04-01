require 'rack'

app = Proc.new do |env|
    puts env
    [
        '200',
        {'Content-Type' => 'text/html'},
        ['Response Body']
    ]
end

Rack::Handler::WEBrick.run app
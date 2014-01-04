require "rubygems"
require "bundler/setup"

require "sinatra"

get "/" do
  erb :index
end

get "/:nim" do |nim|
  @nim = nim
  erb :fotomahasiswa
end
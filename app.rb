require "rubygems"
require "bundler/setup"

require "sinatra"

get "/" do
  erb :index
end

get "/081311233038" do
  erb :bayu
end

get "/:nim" do |nim|
  @nim = nim
  erb :fotomahasiswa
end
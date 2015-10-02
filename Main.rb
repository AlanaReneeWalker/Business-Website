require "sinatra"

get "/home" do
	erb :home
end

get"/services" do
	erb :services
end

get "/profiles" do
	erb :profiles
end

get "/contact" do
	erb :contact
end
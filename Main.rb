require "sinatra"
require "mandrill"

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

def send_email(message_body)

	mandrill = Mandrill::API.new

	message = {
	   :subject => "Hello",
	   :from_name => "Alana",
	   :text => message_body,
	   :to => [{:email=> "alanareneewalker@gmail.com", :name=> "Alana Walker"}],
	   :html => "<html><h1>#{message_body}</h1></html>",
	   :from_email => "alana_walker93@yahoo.com",
	  }
	  sending = mandrill.messages.send message

	  puts sending
end


post "/contact" do
puts "sending email now"

  send_email params[:message_body]
redirect "/contact"
end

end


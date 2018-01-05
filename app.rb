require "sinatra"
#enable sessions


get '/' do
    erb :shell
end


post '/shells' do
    shells = params[:shells]
    redirect '/meat?shells=' + shells
end

get '/meat' do
	erb :meat, :locals => {:shells => shells}
end

post '/meat' do
	shell = params[:shells]
	meat_choice = params[:meat_choice]
	redirect '/cheese?shells=' + shells + '&meat_choice=' + meat_choice
end
 
get '/cheese' do
	erb :cheese, :locals => {:shells => shells, :meat_choice => meat_choice}
end

post'/cheese' do
	shells = params[:shells]
	meat_choice =  params[:meat_choice]
	cheese_choice = params[:cheese_choice]
	puts "Thank you for your order"
	# redirect 'veggie?shells=' + shells + '&meat_choice' + meat_choice + '&cheese_choice' + cheese_choice
end

# get '/veggie' do
# 	erb :veggie
# end

# get '/sauce' do
# 	erb :firstedit
# end



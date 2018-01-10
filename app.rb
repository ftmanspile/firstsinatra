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
	shells = params[:shells]
	erb :meat, :locals => {:shells => shells}
end

post '/meat' do
	shell = params[:shells]
	meat_choice = params[:meat_choice]
	redirect '/cheese?shells=' + shells + '&meat_choice=' + meat_choice
end
 
get '/cheese' do
    shells = params[:shells]
    meat_choice = params[:meat_choice]
    erb :cheese, :locals => {:shells => shells, :meat_choice => meat_choice}
end

post'/cheese' do
    shells = params[:shells]
    meat_choice =  params[:meat_choice]
    cheese_choice = params[:cheese_choice]
    redirect 'veggie?shells=' + shells + '&meat_choice' + meat_choice + '&cheese_choice' + cheese_choice
end

get '/veggie' do
	shells = params[:shells]
	meat_choice = params[:meat_choice]
	cheese_choice = params[:cheese_choice]
	erb :veggie, :locals => {:shells => shells, :meat_choice => meat_choice, :cheese_choice => cheese_choice}
end

post '/veggie' do
	shells = params[:shells]
	meat_choice = params[:meat_choice]
	cheese_choice = params[:cheese_choice]
	veggie_choice = params[:veggie_choice]
	redirect 'sauce?shells=' + shells +'&meat_choice' + meat_choice + '&cheese_choice' + cheese_choice + '&veggie_choice' + veggie_choice
end

# get '/sauce' do
# 	erb :firstedit
# end




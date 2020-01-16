# frozen_string_literal: true

require 'sinatra/base'
require_relative 'lib/timepiece'

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $user_name = params[:user_name]
    $day = params[:day]
    $month = params[:month]
    
    $birthday = Timepiece.new($day, $month)
      if $birthday.bday_today?
        redirect '/birthday_message'
      else 
        redirect '/countdown'
      end 
  end

  get '/birthday_message' do
    erb :birthday_message
  end

  get '/countdown' do
    erb :countdown
  end 


end

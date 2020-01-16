# frozen_string_literal: true

require 'sinatra/base'
require_relative 'lib/timepiece'

class Birthday < Sinatra::Base
  enable :sessions

  before do
    @birthday_instance = Timepiece.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @birthday_instance = Timepiece.create(params[:user_name], params[:day], params[:month])
      if @birthday_instance.bday_today?
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

require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    @puppy = Puppy.new(name, breed, age)
    erb :create_puppy.erb
  end
end

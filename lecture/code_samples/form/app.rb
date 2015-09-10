require 'bundler'
Bundler.require
Dir.glob('./lib/*.rb') do |model|
  require model
end

module Name
  class App < Sinatra::Base
    configure do
      ActiveRecord::Base.establish_connection(
        :adapter => 'sqlite3',
        :database =>  'sinatra_application.sqlite3.db'
      )
    end
    set :database, "sqlite3:///database.db"

    #routes
    get '/form' do
      erb :form
    end

    get "/people" do
      @people = Person.all
      erb :people
    end

    post '/results' do
      binding.pry
      person = Person.new(params[:some_key])
      @people = [person]
      person.save
      # redirect to("/people")
      erb :people
    end

    get "/multiform" do
      # show the db structure first
      # author has many books
      # books belong to an author
      erb :multiform
    end

    post '/somerandomURL' do
      # show the db structure first
      @author = Author.create(params[:author])
      @books = []
      params[:books].each do |book|
        binding.pry
        @books << @author.books.create(book)
      end
      erb :show
    end

  end
end

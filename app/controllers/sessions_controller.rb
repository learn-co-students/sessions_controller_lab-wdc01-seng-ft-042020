class SessionsController < ApplicationController

  # root 'application#hello'
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'
    def hello
        "hi, #{session[:name]}"
    end

    def new

    end

    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def destroy
        session.delete :name
    end
end

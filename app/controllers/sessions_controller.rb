class SessionsController < ApplicationController

   def new 
   end

   def index 
   end

   def show 
   end

   def create
    if params[:name] == nil || params[:name].empty?
        redirect_to '/sessions/new'
    else    
        session[:name] = params[:name]
        redirect_to '/sessions/show'
    end
   end 

   def destroy
    if session[:name] != nil 
        session.delete :name
        redirect_to '/sessions/new'
    end
   end
end
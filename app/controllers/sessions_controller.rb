class SessionsController < ApplicationController


    def new

    end

    def create

        if params[:name] == nil || params[:name].empty?
            redirect_to login_path
        else
            session[:name]  = params[:name]
            redirect_to show_path
        end

    end

    def show

    end

    def destroy
        session.delete :name
        redirect_to login_path
    end


end

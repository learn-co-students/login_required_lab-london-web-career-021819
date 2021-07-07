class SecretsController < ApplicationController

  before_action :check_login

  def show

  end

  private

    def check_login
      unless session.include? :name
        redirect_to login_url
      end
    end

end

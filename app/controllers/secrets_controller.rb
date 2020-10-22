class SecretsController < ApplicationController
  before_action :require_login
  def show
    if !session[:name]
      redirect_to '/login'
    end
  end
  
  private


  def require_login
    return redirect_to root_path unless session.include?(:name)
  end
end

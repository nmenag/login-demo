class SessionsController < ApplicationController

  before_action :access_permit, only:[:new, :create]

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    
    if user && user.authenticate(params[:password])
      sign_in user
      redirect_to index_url
    else
      redirect_to root_path, alert: "contraseña o email son invalidos"
    end
  end
end

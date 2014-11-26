class IndexController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @message = "hello word"
  end

  def login
  end
end

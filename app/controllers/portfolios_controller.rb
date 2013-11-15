class PortfoliosController < ApplicationController
  
  def index
  
  end

  def new

  end	

  def create
  	render text: params[:portfolio].inspect
  end	

end

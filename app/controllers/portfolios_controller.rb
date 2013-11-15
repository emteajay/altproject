class PortfoliosController < ApplicationController
  
  def index
  	#@portfolios = Portfolio.all
  end

  def new
  	#@portfolios = Portfolio.new
  end	

  def create
  	render text: params[:portfolio].inspect
  end	

end

class PortfoliosController < ApplicationController
  
  def index
  	@portfolios = Portfolio.all
  end

  def new
  	@portfolios = Portfolio.new
  end	

  def create
  	@portfolio = Portfolio.new(portfolio_params)
  	if @portfolio.save
  		redirect_to @portfolio
  	else
  		render 'new'
  	end		
  end	

  def show
  	@portfolio = Portfolio.find(params[:id])
  end	

  private

  def portfolio_params
  	params.require(:portfolio).permit(:fund, :commitment, :paid_in, :distributed, :adjustment, :net_asset_value)  	
  end	

end

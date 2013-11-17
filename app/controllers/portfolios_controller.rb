class PortfoliosController < ApplicationController
  
  def index
  	@portfolios = Portfolio.all
    @portfolio = Portfolio.new
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

  def edit
    @portfolios = Portfolio.find(params[:id])
  end  

  def show
  	@portfolio = Portfolio.find(params[:id])
  end	

  private

  def portfolio_params
  	params.require(:portfolios).permit(:fund, :commitment, :paid_in, :distributed, :adjustment, :net_asset_value)  	
  end	

end

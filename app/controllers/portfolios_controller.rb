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
    @portfolio = Portfolio.find(params[:id])
  end  

  def show
  	@portfolio = Portfolio.find(params[:id])
  end

  def update
    @portfolio = Portfolio.find(params[:id])

    if @portfolio.update(portfolio_params)
      redirect_to @portfolio
    else
      render :edit
    end    
  end  

  def destroy
    @portfolio = Portfolio.find(params[:id])
    @portfolio.destroy
    redirect_to @portfolio
  end  


  private

  def portfolio_params
  	params.require(:portfolios).permit(:fund, :commitment, :paid_in, :distributed, :adjustment, :net_asset_value)  	
  end	

end

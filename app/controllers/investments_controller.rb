class InvestmentsController < ApplicationController

  before_filter :authenticate_user!
  
  def index
    if user_signed_in?
    	@investments = current_user.investments
      @investment = Investment.new
    else
      redirect_to root_path
    end  
  end

  def new
  	@investments = Investment.new
  end	

  def create
    @investment = Investment.new(investment_params)
    if @investment.save
      redirect_to @investment
    else
    	render :new
    end		
  end

  def edit
    @investment = Investment.find(params[:id])
  end  

  def show
  	@investment = Investment.find(params[:id])
  end

  def update
    @investment = Investment.find(params[:id])

    if @investment.update(investment_params_update)
      redirect_to @investment
    else
      render :edit
    end    
  end  

  def destroy
    @investment = Investment.find(params[:id])
    @investment.destroy
    redirect_to @investment
  end  



  private

  def investment_params
  	params.require(:investment).permit(:fund, :commitment, :user_id, :paid_in, :distributed, :adjustment, :net_asset_value)  	
  end	

  def investment_params_update
    params.require(:investment).permit(:fund, :commitment, :user_id, :paid_in, :distributed, :adjustment, :net_asset_value)   
  end 


end

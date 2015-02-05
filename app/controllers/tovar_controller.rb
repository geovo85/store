class TovarController < ApplicationController
  
  def index
  	@tovars = Tovar.all
  end

  def show
  	@tovar = Tovar.find( params[:id] )   	
  end

  def edit
  	@tovar = current_tovar  	
  end

  def new
  	@tovar = Tovar.new
  	@tovar.save
  	render :edit  	
  end

  def update
  	@tovar = Tovar.find( params[:id] ) 
  	@tovar.name    = str_simpl( params[:tovar][:name] )
  	@tovar.article = str_simpl( params[:tovar][:article] )	
  	@tovar.comment = str_simpl( params[:tovar][:comment] )
  	@tovar.hidden  = params[:tovar][:hidden]
    @tovar.save
  	render :show
  end

  def destroy
  	@tovar = Tovar.find( params[:id] )
  	@tovar.destroy
  	redirect_to tovar_index_path
  	
  end

  private

  def current_tovar
  	Tovar.find(params[:id])
  end

end

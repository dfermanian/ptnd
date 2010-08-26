class HellosController < ApplicationController
  def index
    @hellos = Hello.all
  end
  
  def show
    @hello = Hello.find(params[:id])
  end
  
  def new
    @hello = Hello.new
  end
  
  def create
    @hello = Hello.new(params[:hello])
    if @hello.save
      flash[:notice] = "Successfully created hello."
      redirect_to @hello
    else
      render :action => 'new'
    end
  end
  
  def edit
    @hello = Hello.find(params[:id])
  end
  
  def update
    @hello = Hello.find(params[:id])
    if @hello.update_attributes(params[:hello])
      flash[:notice] = "Successfully updated hello."
      redirect_to @hello
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @hello = Hello.find(params[:id])
    @hello.destroy
    flash[:notice] = "Successfully destroyed hello."
    redirect_to hellos_url
  end
end

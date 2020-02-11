class GossipsController < ApplicationController
  
  def index
    @gossips = Gossip.all
  end

  def show
    @specific_gossip = Gossip.find(params[:id])
  end

  def new
    
  end

  def create
    
  end

  def udpate
    
  end

  def edit
    
  end

  def destroy
    
  end

end

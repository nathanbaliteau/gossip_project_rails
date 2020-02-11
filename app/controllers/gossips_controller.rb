class GossipsController < ApplicationController
  
  def index
    puts "$" * 60
    puts "ceci est le contenu de params :"
    puts params
    puts "$" * 60
  end

  def show
    @specific_gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user: User.find(params[:user]))

    if @gossip.save
      render :index
    else
      render :new
    end
  end

  def udpate
    
  end

  def edit
    
  end

  def destroy
    
  end

end

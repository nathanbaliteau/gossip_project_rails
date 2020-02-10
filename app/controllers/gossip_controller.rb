class GossipController < ApplicationController
  def show_specific_gossip
    @specific_gossip = Gossip.find(params[:id])
  end
end

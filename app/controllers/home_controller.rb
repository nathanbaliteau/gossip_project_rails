class HomeController < ApplicationController
  def show_gossips
    @gossips = Gossip.all
  end
end

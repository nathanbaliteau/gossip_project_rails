module GossipsHelper

  def is_admin?
    @gossip = Gossip.find(params[:id])
    if current_user == @gossip.user
      true
    else
      false
    end
  end

end

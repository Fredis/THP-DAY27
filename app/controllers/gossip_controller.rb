class GossipController < ApplicationController
  def new
  end

  def create
  	gossip_create = Gossip.create!(user_id: current_user.id, content: gossip_params[:content])
  	redirect_to gossip_index_path
  end

  def index
  	@gossips = Gossip.all
  end

  def destroy
  	puts "/////////"
  	Gossip.delete(params[:id].to_i.inspect)
  	redirect_to gossip_index_path
  end

  def gossip_params
		params.require(:gossip_creation).permit(:content)
  end

end

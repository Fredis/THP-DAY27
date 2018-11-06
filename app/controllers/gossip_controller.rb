class GossipController < ApplicationController
  def new
  	puts "////// new //////"
  end

  def create
  	puts "///////"
  	puts current_user.id
  	gossip_create = Gossip.create!(user_id: current_user.id, content: gossip_params[:content])
  end

  def index
  	@gossips = Gossip.all
  end

  def destroy
  end

  def gossip_params
		params.require(:gossip_creation).permit(:content)
  end

end

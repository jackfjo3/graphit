class TrackablesController < ApplicationController

  def create
    @graph = Graph.find(params[:graph_id])
    @trackables = @graph.trackables.create(params[:trackable].permit(:name, :kind, :min, :max))

    if @trackables.save
      redirect_to @graph
    else 
      render 'new'
    end
  end
end

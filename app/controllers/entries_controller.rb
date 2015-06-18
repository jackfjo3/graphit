class EntriesController < ApplicationController

  def new
    @graph = Graph.find(params[:graph_id])
    @trackables = @graph.trackables.all
  end

end

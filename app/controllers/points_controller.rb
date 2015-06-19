class PointsController < ApplicationController
  
def create
  @graph = Graph.find(:graph_id)
  @trackables = @graph.trackables.all
end

end

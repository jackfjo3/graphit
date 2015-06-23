class GraphsController < ApplicationController

  before_action :authenticate_user!

  def index
    @graphs = current_user.graphs.all.order('updated_at DESC')
  end

  def show
    @graph = Graph.find(params[:id])
    @trackables = @graph.trackables.all
    @trackables.each do |trackable|
      points = trackable.points.all
      points.each do |point|
        @y_max == nil || point.value > @y_max ? @y_max = point.value : @y_max = @y_max #seems redundant to assign to itself
        @y_min == nil || point.value < @y_min ? @y_min = point.value : @y_min = @y_min
      end
    end
  end

  def new
    @graph = current_user.graphs.build
  end

  def create
    @graph = current_user.graphs.build(graph_params)
    if @graph.save
      redirect_to @graph
    else
      render 'new'
    end
  end

  def destroy
    Graph.find(params[:id]).destroy
    flash[:success] = "Graph deleted"
    redirect_to root_url
  end

private
  
  def graph_params
    params.require(:graph).permit(:name)
  end


end

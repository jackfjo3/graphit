class GraphsController < ApplicationController

  before_action :authenticate_user!

  def index
    @graphs = current_user.graphs.all.order('updated_at DESC')
  end

  def show
    @graph = Graph.find(params[:id])
    @trackables = @graph.trackables.all
  end

  def new
    @graph = current_user.graphs.build
    if @graph.save
      redirect_to @graph
      #SUCCESS MESSAGE
    else
      render 'new'
      #FAIL MESSAGE
    end
  end

  def create
    @graph = current_user.graphs.build(graph_params)
    if @graph.save
      redirect_to @graph
    else
      render 'new'
    end
  end

private
  
  def graph_params
    params.require(:graph).permit(:name)
  end


end

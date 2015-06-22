class PointsController < ApplicationController
  
def create
  @trackable = Trackable.find(params[:trackable_id])
  @point = @trackable.points.build(params.require(:point).permit(:value))
  if @point.save
    redirect_to @trackable.graph 
    # Success message here
  else
    redirect_to @trackable.graph #possibly dry this
    # Failure message here
  end
end

end

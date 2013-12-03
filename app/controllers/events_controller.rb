class EventsController < ApplicationController
  def index
  	@app = Events.where("month = ? AND year = ?", params[:month], params[:year])
  	render:json => @app
  end

  def show
  end

  def create
  	@app = Events.new(app_params)
  	@app.save
  	render :nothing => true
  end

  private

  def app_params
  	params.require(:events).permit(:event, :day, :time, :month, :year)
  end
end

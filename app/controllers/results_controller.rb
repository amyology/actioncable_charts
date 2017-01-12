class ResultsController < ApplicationController
  
  def index
    @poll = Poll.includes(:votes).find(params[:poll_id])
  end
  
end

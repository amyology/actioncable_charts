class PollsController < ApplicationController

  def index
    @polls = Poll.all
  end

  def show
    @poll = Poll.find(params[:id])
    @vote = @poll.votes.build
  end

end

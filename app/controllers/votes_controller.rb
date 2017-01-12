class VotesController < ApplicationController

  def create
    @poll = Poll.find(params[:poll_id])
    @vote = @poll.votes.build(vote_params)

    if @vote.save
      PollingChannel.broadcast_to(@poll, @poll.results)
      session[@poll.code] = true
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:value)
  end

end

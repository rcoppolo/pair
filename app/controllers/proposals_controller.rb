class ProposalsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @proposee = User.find(params[:proposal][:proposee_id])
    @proposal = current_user.sent_proposals.new 
    @proposal.proposee_id = @proposee.id
    if @proposal.save!
      #change to user's proposal index
      flash[:success] = "We'll let them know you wanna share a pear!"
      redirect_to root_path
    else
      flash[:error] = "You lose."
    end
      
  end

  def destroy
  end

  def index
    @sent_proposals = current_user.sent_proposals
    @received_proposals = current_user.received_proposals 
  end
end
class MessagesController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    recipients = User.where(id: params['recipients'])
    conversation = current_user.send_message(recipients, params[:message]['Description'], params[:message]['Title']).conversation
    flash[:success] = "Message has been sent!"
    redirect_to conversation_path(conversation)
  end
  def new
    @chosen_recipient = User.find_by(id: params[:to].to_i) if params[:to]
  end
end

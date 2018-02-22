class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :user_signed_in?
  before_action :all_ordered_conversations

  def all_ordered_conversations 
	  if user_signed_in?
	    @all_conversations = OrderConversationsService.new({user: current_user}).call
	  end
  end
end
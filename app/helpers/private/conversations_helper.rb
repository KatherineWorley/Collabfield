module Private::ConversationsHelper
	# get the opposite user of the conversation
	def private_conv_recipient(conversation)
	  conversation.opposed_user(current_user)
	end
end

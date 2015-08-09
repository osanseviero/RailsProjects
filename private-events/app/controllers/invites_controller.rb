class InvitesController < ApplicationController
	def create
		@event = Event.find(params[:invite][:attended_event_id])
		current_user.attend!(@event)
		redirect_to @event
	end

end

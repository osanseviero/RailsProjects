class Invite < ActiveRecord::Base
	belongs_to :attendee, class_name: "User"
	belongs_to :attended_event, class_name: "Event"

	# To ensure that the event to which the user is signing exists and to validate a user is signing to the event
	validates :attendee_id, presence: true
	validates :attended_event_id, presence:true
end

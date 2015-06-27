class Inquiry < ActiveRecord::Base
	after_create :inquiry_notification

	def inquiry_notification
		AdminMailer.new_inquiry(self)
	end
end

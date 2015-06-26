class Post < ActiveRecord::Base
	belongs_to :category
	validates :category, presence: true
	has_many :pictures, :dependent => :destroy
	validates :category_id, :title, :author, :body, presence: true

	after_create :send_notification

	def send_notification
		AdminMailer.new_post(self)
	end

end

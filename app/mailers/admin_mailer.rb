class AdminMailer < ActionMailer::Base

  def mandrill_client
  	@mandrill_client ||= Mandrill::API.new MANDRILL_API_KEY
  end

  def new_post(post)
  	template_name = "new-post"
  	template_content = []
  	message = {
  		to: [{email: "steveono@gmail.com"}],
  		subject: "New Post Submitted",
  		merge_vars: [
  			{rcpt: "steveono@gmail.com",
  			 vars: [
  			 	 {name: "POST_TITLE", content: post.title}
  			  ]
  			}
  		]
  	}
  	mandrill_client.messages.send_template(template_name, template_content, message)
  end

  def new_inquiry(inquiry)
  	template_name = "new-inquiry"
  	template_content = []
  	message = {
  		to: [{email: "steveono@gmail.com"}],
  		subject: "New Inquiry Received",
  		merge_vars: [
  			{rcpt: "steveono@gmail.com",
  			 vars: [
  			 	 {name: "NAME", content: inquiry.name },
  			 	 {name: "MESSAGE", content: inquiry.message }
  			  ]
  			}
  		]
  	}
  	mandrill_client.messages.send_template(template_name, template_content, message)

  	10.times { puts "*" }
  	puts mandrill_client
  	10.times { puts "*" }
  end

end

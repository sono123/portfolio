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

  	10.times { p "*" }
  		puts post.title
  	10.times { p "*" }
  		puts mandrill_client.messages
  	10.times { p "*" }

  	p mandrill_client.messages.send_template(template_name, template_content, message)
  end
end

MANDRILL_API_KEY = "ArVrmI_bpPxIjPt_COzCWQ"

ActionMailer::Base.smtp_settings = {
	address: "smtp.mandrillapp.com",
	post: 587,
	enable_starttls_auto: true,
	user_name: "steveono@gmail.com",
	password: MANDRILL_API_KEY,
	authentication: "login"
}

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default charset: "utf-8"






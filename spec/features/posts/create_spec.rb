require 'spec_helper'

describe "Creating posts" do
	it "redirects to the posts index page on success" do
		let(:verify_recaptcha).return(true)
		visit "/contact"
		find(".contact_options li", :text => "Guest Post").click

		fill_in "Title", with: "RS Testing Title"
		fill_in "Author", with: "Steve Ono"
		# select("Automotive", from: "post[category_id]")
		# find("#post_category_id").find(:xpath, "Automotive").select_option
		fill_in "Body", with: "RS Testing Body."

		attach_file("images[]", File.join(Rails.root, "app/assets/images/lorempixel.jpg"))
		click_button "SUBMIT"

		expect(page).to have_content("Featured Posts")
	end
end
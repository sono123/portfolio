class AddEmailToInquiries < ActiveRecord::Migration
  def change
    add_column :inquiries, :email, :string
  end
end

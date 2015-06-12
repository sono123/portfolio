class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.belongs_to :category
    	t.string :title
    	t.string :image_url
    	t.string :author
    	t.text :body
      t.timestamps
    end
  end
end

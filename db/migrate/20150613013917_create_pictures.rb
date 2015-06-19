class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
    	t.belongs_to :post
      t.timestamps
    end
    add_attachment :pictures, :image
  end
end

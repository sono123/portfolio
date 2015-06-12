class CreatePortfolioPieces < ActiveRecord::Migration
  def change
    create_table :portfolio_pieces do |t|
    	t.belongs_to :category
    	t.string :title
    	t.string :image_url
    	t.text :body
      t.timestamps
    end
  end
end

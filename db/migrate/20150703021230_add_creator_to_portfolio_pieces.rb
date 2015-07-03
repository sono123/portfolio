class AddCreatorToPortfolioPieces < ActiveRecord::Migration
  def change
    add_column :portfolio_pieces, :creator, :string
  end
end

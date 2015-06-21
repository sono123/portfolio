class AddCustomPartialToPortfolioPieces < ActiveRecord::Migration
  def change
    add_column :portfolio_pieces, :custom_partial, :string
  end
end

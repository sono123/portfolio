class PortfolioPiecesController < ApplicationController

  def index
  	@portfolio_pieces = PortfolioPiece.all
  end

  def show
  	@portfolio_piece = PortfolioPiece.find(params['id'])
  end

end

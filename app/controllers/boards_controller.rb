class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
    # binding.pry
  end

  def create
    Board.create(board_params)
    #binding.pry
    
  end

  private

  def board_params  
    params.require(:board).permit(:name, :title, :body)
  end

end

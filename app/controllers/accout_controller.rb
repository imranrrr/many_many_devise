class AccoutsController < ApplicationController

  def index
    @accout = Accout.all
  end

  def new
  end

  def create
    @accout        = Accout.new
    @accout.author = current_author
    @accout.book   = Book.last
    @accout.save!
    redirect_to accouts_path
  end

end

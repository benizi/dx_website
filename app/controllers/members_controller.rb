class MembersController < ApplicationController
  def new
  	@member = Member.new
  end

  def show
  	@member = Member.find(params[:id])
  end

end

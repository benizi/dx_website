class MembersController < ApplicationController
  def new
  	@member = Member.new
  end

  def show
  	@member = Member.find(params[:id])
  end

  def create
  	@member = Member.new(member_params)
  	@member.status = "pending"
  	if @member.save
      flash[:success] = "The C is required to approve your account before you can log in."
  		redirect_to @member
  	else
  		render 'new'
  	end
  end

  private
  	def member_params
  		params.require(:member).permit(:first, :last, :email, :peoplesoft,
  								:two_p, :phone, :carrier, :address, 
  								:password, :password_confirmation)
  	end
end
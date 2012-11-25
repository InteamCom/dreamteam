class ProfilesController < ApplicationController
  def edit
    @member = current_member
  end

  def update
  	data = params[:member]
  	current_member.name = data[:name]
  	current_member.email = data[:email]
  	current_member.save
    
    redirect_to edit_profile_path
  end
end
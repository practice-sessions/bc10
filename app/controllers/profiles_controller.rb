class ProfilesController < ApplicationController
   # Get to /users/:user_id/profile/new
   def new
     # Render blank profile details form
     @profile = Profile.new
   end

   # Post to/user_id/profile
   def create
     # Ensure that we have the user who filled out form_form
     @user = User.find( params[:user_id] )
     # Create profile linked to this specific user
     @profile = @user.build_profile( profile_params )
       if @profile.save
         flash[:success] = "Profile updated!"
         redirect_to user_path( params[:user_id] )
       else
         render action: :new
       end
   end

  private
  def profile_params
    params.required(:profile).permit(:first_name, :last_name, :job_title, :phone_number, :contact_email, :decription)
  end
end

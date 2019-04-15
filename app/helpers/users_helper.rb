module UsersHelper
   def job_title_icon
      if @user.profile.job_title == "Developer"
         "<i class='fa fa-code'></i>".html_safe
      elsif @user.profile.job_title == "Institution"
         "<i class='fa fa-university'></i>".html_safe
      elsif @user.profile.job_title == "Student"
         "<i class='fa fa-graduation-cap'></i>".html_safe
      elsif @user.profile.job_title == "others"
         "<i class= 'fa fa-users'></i>".html_safe
      end
   end
end

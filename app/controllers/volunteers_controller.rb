class VolunteersController < ApplicationController
  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    if  @volunteer.save
      redirect_to new_volunteer_path, notice: "Information updated."
    else
      redirect_to new_volunteer_path, notice: "Error occured."
    end
  end

private
  def volunteer_params
    params.require(:volunteer).permit(:name, :email, :twitter, :linkedin, :What_programming_language_are_you_able_to_teach?, :What_duration_of_weeks_or_months_do_you_intend_to_volunteer?, :How_many_hours_a_week_do_you_have_available_to_volunteer?, :How_did_you_hear_about_us?, :comments)
  end
end

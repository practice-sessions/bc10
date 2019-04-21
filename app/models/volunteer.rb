class Volunteer < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :twitter, presence: true
  validates :linkedin, presence: true
  validates :What_programming_language_are_you_able_to_teach?, presence: true
  validates :What_duration_of_weeks_or_months_do_you_intend_to_volunteer?, presence: true
  validates :How_many_hours_a_week_do_you_have_available_to_volunteer?, presence: true
  validates :How_did_you_hear_about_us?, presence: true
  validates :comments, presence: true
end
